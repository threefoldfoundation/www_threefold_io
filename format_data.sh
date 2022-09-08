#/bin/bash
 

dir="threefold_data/content/blog"

echo "Formatting data..."
 
for file in $(grep -ril 'authors:' $dir); 
do
    echo $file
    #FPATH="${file%/*}"
    #AUTHOR="$(grep -n 'author:' "$file" | sed -n -e 's/^.*\(\(author:\).*\)/\1/p')" 
    #LINE1="$(grep -n 'author:' "$file" | head -n1 | sed 's/:.*//')" 
    #LINE2="$(grep -n 'authorImg:' "$file" | head -n1 | sed 's/:.*//')"
    #AUTHOR_NAME="${AUTHOR#* }"

    #echo $AUTHOR_NAME | sed 's/[A-Z]/\L&/g'
    #AUTHOR_NAME=$(echo "$AUTHOR_NAME" | tr '[:upper:]' '[:lower:]')
    #AUTHOR_SNAKE=${AUTHOR_NAME// /_}

    # move created field below excerpt
    DATE="$(grep -n 'created:' "$file" | sed -n -e 's/^.*\(\(created:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'created:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'excerpt:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -a -i "" "${LINE_NUM}i\\
$DATE\\
" "$file"
    
    # sed -i "" "${LINE1}d" "$file"

    #template: blogPage.html

    # move category field below people
    CATEGORY="$(grep -n 'category:' "$file" | sed -n -e 's/^.*\(\(category:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'category:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'authors:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
    $CATEGORY\\
    " "$file"

    # move tags field below people
    TAGS="$(grep -n 'tags:' "$file" | sed -n -e 's/^.*\(\(tags:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'tags:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'authors:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
    $TAGS\\
" "$file"

    # move image field below category
    IMAGE="$(grep -n 'image:' "$file" | sed -n -e 's/^.*\(\(image:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'image:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'category:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
$IMAGE\\
" "$file"

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

    #mv 'static/'$IMG_PATH $FPATH             

    #="$(grep -n 'imgPath:' "$file")" 
    #ECHO $NUM
    #IMG_PATH="$(echo $NUM | sed -n -e 's/^.*\(\(images\/blog\/\).*\)/\1/p')"
    #echo $IMG_PATH
    #IMG_NAME="${IMG_PATH##*/}"
    #echo $IMG_NAME
    #mv 'static/'$IMG_PATH $FPATH             
    #sed -i "" "s|$IMG_PATH|$IMG_NAME|g" "$file"
done;

dir="threefold_data/content/news"
 
for file in $(grep -ril 'authors:' $dir); 
do
    echo $file
    #FPATH="${file%/*}"
    #AUTHOR="$(grep -n 'author:' "$file" | sed -n -e 's/^.*\(\(author:\).*\)/\1/p')" 
    #LINE1="$(grep -n 'author:' "$file" | head -n1 | sed 's/:.*//')" 
    #LINE2="$(grep -n 'authorImg:' "$file" | head -n1 | sed 's/:.*//')"
    #AUTHOR_NAME="${AUTHOR#* }"

    #echo $AUTHOR_NAME | sed 's/[A-Z]/\L&/g'
    #AUTHOR_NAME=$(echo "$AUTHOR_NAME" | tr '[:upper:]' '[:lower:]')
    #AUTHOR_SNAKE=${AUTHOR_NAME// /_}

    # move created field below excerpt
    DATE="$(grep -n 'created:' "$file" | sed -n -e 's/^.*\(\(created:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'created:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'excerpt:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -a -i "" "${LINE_NUM}i\\
$DATE\\
" "$file"
    
    # sed -i "" "${LINE1}d" "$file"

    #template: blogPage.html

    # move category field below people
    CATEGORY="$(grep -n 'category:' "$file" | sed -n -e 's/^.*\(\(category:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'category:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'authors:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
    $CATEGORY\\
    " "$file"

    # move tags field below people
    TAGS="$(grep -n 'tags:' "$file" | sed -n -e 's/^.*\(\(tags:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'tags:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'authors:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
    $TAGS\\
" "$file"

    # move image field below category
    IMAGE="$(grep -n 'image:' "$file" | sed -n -e 's/^.*\(\(image:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'image:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'category:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
$IMAGE\\
" "$file"

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

    #mv 'static/'$IMG_PATH $FPATH             

    #="$(grep -n 'imgPath:' "$file")" 
    #ECHO $NUM
    #IMG_PATH="$(echo $NUM | sed -n -e 's/^.*\(\(images\/blog\/\).*\)/\1/p')"
    #echo $IMG_PATH
    #IMG_NAME="${IMG_PATH##*/}"
    #echo $IMG_NAME
    #mv 'static/'$IMG_PATH $FPATH             
    #sed -i "" "s|$IMG_PATH|$IMG_NAME|g" "$file"

done;

dir="threefold_data/content/person"
 
for file in $(grep -ril 'name:' $dir); 
do
    echo $file

    # move created field below excerpt
    #BIO="$(grep -n 'bio:' "$file" | sed -n -e 's/^.*\(\(bio:\).*\)/\1/p')" 
    #LINE_NUM="$(grep -n 'bio:' "$file" | head -n1 | sed 's/:.*//')" 
    #sed -i "" "${LINE_NUM}d" "$file"
    #LINE_NUM="$(grep -n 'socialLinks:' "$file" | head -n1 | sed 's/:.*//')" 
    #sed -a -i "" "${LINE_NUM+}i\\
#$DATE\\
#" "$file"

    sed -i "" "s|private: 0|    private: 0\\
    socialLinks: {\\
    }|g" "$file"

    sed -i "" "s|private: 1|    private: 1\\
    socialLinks: {\\
    }|g" "$file"

    # move bio field below toml
    BIO="$(grep -n 'bio:' "$file" | sed -n -e 's/^.*\(\(bio:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'bio:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    echo "\n$BIO" >> $file
    sed -i "" "s|bio: ||g" "$file"

    # move category field below excerpt
    CATEGORY="$(grep -n 'category:' "$file" | sed -n -e 's/^.*\(\(category:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'category:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'excerpt:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
    $CATEGORY\\
    " "$file"

    # move memberships field below excerpt
    MEMBERSHIPS="$(grep -n 'memberships:' "$file" | sed -n -e 's/^.*\(\(memberships:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'memberships:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'excerpt:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
    $MEMBERSHIPS\\
" "$file"

    # move website field below socialLinks
    MEMBERSHIPS="$(grep -n 'websites:' "$file" | sed -n -e 's/^.*\(\(websites:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'websites:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'socialLinks:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
    $MEMBERSHIPS\\
" "$file"

    # move project field below socialLinks
    MEMBERSHIPS="$(grep -n 'projects:' "$file" | sed -n -e 's/^.*\(\(projects:\).*\)/\1/p')" 
    LINE_NUM="$(grep -n 'projects:' "$file" | head -n1 | sed 's/:.*//')" 
    sed -i "" "${LINE_NUM}d" "$file"
    LINE_NUM="$(grep -n 'image:' "$file" | head -n1 | sed 's/:.*//')"
    LINE_NUM="$(($LINE_NUM + 1))"
    sed -a -i "" "${LINE_NUM}i\\
    $MEMBERSHIPS\\
" "$file"
   
    LINKEDIN="$(grep -n 'linkedin:' "$file" | sed -n -e 's/^.*\(\(linkedin:\).*\)/\1/p')" 
    if [ "$LINKEDIN" != "" ]; then
        LINE_NUM="$(grep -n 'linkedin:' "$file" | head -n1 | sed 's/:.*//')" 
        sed -i "" "${LINE_NUM}d" "$file"
        LINE_NUM="$(grep -n 'socialLinks:' "$file" | head -n1 | sed 's/:.*//')"
        LINE_NUM="$(($LINE_NUM + 1))"
        sed -a -i "" "${LINE_NUM}i\\
    $LINKEDIN\\
" "$file"
        sed -i "" "s|$LINKEDIN|$LINKEDIN,|g" "$file"
    fi

    GITHUB="$(grep -n 'github:' "$file" | sed -n -e 's/^.*\(\(github:\).*\)/\1/p')" 
    if [ "$GITHUB" != "" ]; then
        LINE_NUM="$(grep -n 'github:' "$file" | head -n1 | sed 's/:.*//')" 
        sed -i "" "${LINE_NUM}d" "$file"
        LINE_NUM="$(grep -n 'linkedin:' "$file" | head -n1 | sed 's/:.*//')"
        LINE_NUM="$(($LINE_NUM + 1))"
        sed -a -i "" "${LINE_NUM}i\\
        $GITHUB\\
    " "$file"
        sed -i "" "s|$GITHUB|$GITHUB,|g" "$file"
    fi



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

    #mv 'static/'$IMG_PATH $FPATH             

    #="$(grep -n 'imgPath:' "$file")" 
    #ECHO $NUM
    #IMG_PATH="$(echo $NUM | sed -n -e 's/^.*\(\(images\/blog\/\).*\)/\1/p')"
    #echo $IMG_PATH
    #IMG_NAME="${IMG_PATH##*/}"
    #echo $IMG_NAME
    #mv 'static/'$IMG_PATH $FPATH             
    #sed -i "" "s|$IMG_PATH|$IMG_NAME|g" "$file"

done;
