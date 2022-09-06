#/bin/bash
 
echo "Running threefold_data formatter:"
echo "Formatting people..."
dir="threefold_data/content/person"

# function that checks whether given file is formatted
# simply compares if keyword excerpt or description is used
# $1: file

exists() {
    if grep "$1" $2 > /dev/null
    then
        return 0
    else
        return 1
    fi
}

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

replace() {
        sed -i "" "s|$1|$2|g" "$file"
}
 
for file in $(grep -ril 'name:' $dir); 
do
    echo $file

    sed -i "" "s|private: 1|    private: 1\\
    socialLinks: {\\
    }|g" "$file"

    move_below category: excerpt: $file
    move_below memberships: excerpt: $file
    move_below websites: socialLinks: $file
    move_below projects: image: $file
    move_below linkedin: socialLinks: $file
    move_below github: linkedin: $file

    # move bio field below toml
    BIO="$(grep -n 'bio:' "$file" | sed -n -e 's/^.*\(\(bio:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'bio:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    echo "\n$BIO" >> $file
    sed -i "" "s|bio: ||g" "$file"


    WEBSITES="$(grep -n 'websites:' "$file" | sed -n -e 's/^.*\(\(websites:\).*\)/\1/p')" 
    sed -i "" "s|$WEBSITES|$WEBSITES,|g" "$file"

    # move id field below excerpt
    ID="$(grep -n 'id:' "$file" | sed -n -e 's/^.*\(\(id:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'id:' "$file" | head -n1 | sed 's/:.*//')" 
    NAME="${ID#* }"
    echo $NAME
    NAME="[$NAME]"
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'excerpt:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
id: ${NAME}\\
" "$file"


    # Change field names
    sed -i "" "s|category:|categories:|g" "$file"
    sed -i "" "s|rank:|weight:|g" "$file"
    sed -i "" "s|excerpt:|description:|g" "$file"
    sed -i "" "s|    ---|---|g" "$file"
    sed -i "" "s|image:|extra:\\
    image:|g" "$file"
    sed -i "" "s|id:|taxonomies:\\
    people:|g" "$file"
    sed -i "" "s|    extra:|extra:|g" "$file"

    sed -i "" "s|websites:|    websites:|g" "$file"
    sed -i "" "s|name:|title:|g" "$file"
    sed -i "" "s|linkedin:|    LinkedIn:|g" "$file"
    sed -i "" "s|projects:|organizations:|g" "$file"
    sed -i "" "s|image: ./|imgPath: |g" "$file"
    sed -i "" "s|countries:|    countries:|g" "$file"
    sed -i "" "s|cities:|    cities:|g" "$file"

    mv $file ${file%/*}/index.md
    mv ${file%/*} content/people

    break

done;

echo "Formatting blogs..."
dir="threefold_data/content/blog"

for file in $(grep -ril 'authors:' $dir); 
do
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

    mv $file ${file%/*}/index.md
    mv ${file%/*} content/blog

    break
done;

echo "Formatting news..."
dir="threefold_data/content/news"
 
for file in $(grep -ril 'authors:' $dir); 
do
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

    mv $file ${file%/*}/index.md
    mv ${file%/*} content/newsroom

    break

done;

