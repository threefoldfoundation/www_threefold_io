#/bin/bash

git submodule update --recursive --remote

# readable shorthand for adding tab
add_tab() { 
    sed -i "" "s|$1|    $1|g" "$2" 
}

# readable shorthand for sed replace
replace() { 
    sed -i "" "s|$1|$2|g" "$3" 
}

# check if certain word exists in a file
exists() {
    if grep "$1" $2 > /dev/null
    then
        return 0
    else
        return 1
    fi
}

# move line with a certain word $1 
# below another line with certain word $2
move_below() {
    if exists $1 $3; then
        TARGET="$(grep -n "$1" "$3" | sed -n -e "s/^.*\(\($1\).*\)/\1/p")" 
        LINE_NUM="$(grep -n "$1" "$3" | head -n1 | sed 's/:.*//')" 
        sed -i "" "${LINE_NUM}d" "$3"
        LINE_NUM="$(grep -n "$2" "$3" | head -n1 | sed 's/:.*//')"
        LINE_NUM="$(($LINE_NUM + 1))"
        sed -a -i "" "${LINE_NUM}i\\
$TARGET\\
" "$3"
    fi
}

folder_exists() {
    echo "content/$1/$2"
    if [ -d "content/$1/$2" ]; then 
        return 0
    fi
    return 1
}

echo "Formatting people..."
dir="threefold_data/content/person"

for file in $(grep -ril 'name:' $dir); 
do
    path=${file%/*}
    name=${path##*/}
    if folder_exists "people" $name; then
        continue
    fi

    sed -i "" "s|private: 1|    private: 1\\
    socialLinks: {\\
    }|g" "$file"
    sed -i "" "s|private: 0|    private: 0\\
    socialLinks: {\\
    }|g" "$file"

    move_below category: excerpt: $file
    move_below memberships: excerpt: $file
    move_below websites: socialLinks: $file
    move_below projects: image: $file
    move_below linkedin: socialLinks: $file
    move_below github: linkedin: $file
    move_below id: excerpt: $file

    # move bio field below toml
    BIO="$(grep -n 'bio:' "$file" | sed -n -e 's/^.*\(\(bio:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'bio:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    echo "\n$BIO" >> $file
    sed -i "" "s|bio: ||g" "$file"

    # adds comma after social links
    WEBSITES="$(grep -n 'websites:' "$file" | sed -n -e 's/^.*\(\(websites:\).*\)/\1/p')" 
    sed -i "" "s|$WEBSITES|$WEBSITES,|g" "$file"
    LINKEDIN="$(grep -n 'linkedin:' "$file" | sed -n -e 's/^.*\(\(linkedin:\).*\)/\1/p')" 
    sed -i "" "s|$LINKEDIN|$LINKEDIN,|g" "$file"
    if exists "github" $file; then
        GITHUB="$(grep -n 'github:' "$file" | sed -n -e 's/^.*\(\(github:\).*\)/\1/p')" 
        sed -i "" "s|$GITHUB|$GITHUB,|g" "$file"
    fi

    # put id into square brackets for people taxonomy
    ID="$(grep -n 'id:' "$file" | sed -n -e 's/^.*\(\(id:\).*\)/\1/p')" 
    NAME="${ID#* }"
    NAME="[$NAME]"
    sed -i "" "s|$ID|id: $NAME|g" "$file"

    # Change field names
    replace "category:" "categories:" $file
    replace "rank:" "weight:" $file
    replace "excerpt:" "description:" $file
    replace "name:" "title:" $file
    replace "linkedin:" "LinkedIn:" $file
    replace "projects:" "organizations:" $file
    replace "projects:" "organizations:" $file
    replace "image: ./" "imgPath: " $file

    sed -i "" "s|imgPath:|extra:\\
    imgPath:|g" "$file"
    sed -i "" "s|id:|taxonomies:\\
    people:|g" "$file"

    add_tab "memberships:" $file
    add_tab "categories:" $file
    add_tab "cities:" $file
    add_tab "countries:" $file
    add_tab "organizations:" $file
    add_tab "LinkedIn:" $file
    add_tab "LinkedIn:" $file
    add_tab "websites:" $file
    add_tab "websites:" $file
    add_tab "github:" $file
    add_tab "github:" $file

    mv $file ${file%/*}/index.md
    mv ${file%/*} content/people

    break
done;

echo "Formatting blogs..."
dir="threefold_data/content/blog"

for file in $(grep -ril 'authors:' $dir); 
do

    path=${file%/*}
    name=${path##*/}
    if folder_exists "blog" $name; then
        continue
    fi

    echo $file

    move_below created: excerpt: $file
    move_below category: authors: $file
    move_below tags: authors: $file
    move_below image: category: $file

    # Change field names
    sed -i "" "s|category:|categories:|g" "$file"
    sed -i "" "s|created:|date:|g" "$file"
    sed -i "" "s|excerpt:|description:|g" "$file"
    sed -i "" "s|    ---|---|g" "$file"
    sed -i "" "s|authors:|taxonomies:\\
    people:|g" "$file"
    sed -i "" "s|image: ./|extra:\\
    imgPath: |g" "$file"

    add_tab "tags" $file
    add_tab "categories" $file

    mv $file ${file%/*}/index.md
    mv ${file%/*} content/blog

    break
done;

echo "Formatting news..."
dir="threefold_data/content/news"
 
for file in $(grep -ril 'authors:' $dir); 
do

    path=${file%/*}
    name=${path##*/}
    if folder_exists "newsroom" $name; then
        continue
    fi
    echo $file

    move_below created: excerpt: $file
    move_below category: authors: $file
    move_below tags: authors: $file
    move_below image: category: $file

    # Change field names
    sed -i "" "s|category:|news-category:|g" "$file"
    sed -i "" "s|created:|date:|g" "$file"
    sed -i "" "s|excerpt:|description:|g" "$file"
    sed -i "" "s|    ---|---|g" "$file"
    sed -i "" "s|authors:|taxonomies:\\
    people:|g" "$file"
    sed -i "" "s|image: ./|extra:\\
    imgPath: |g" "$file"

    add_tab "tags" $file
    add_tab "news-category" $file

    mv $file ${file%/*}/index.md
    mv ${file%/*} content/newsroom

    break
done;

# 
# mickey malul people taxonomy should be mickey_malul
# kristof's categories are not formatted correctly
# zero people it is the future blog bug
