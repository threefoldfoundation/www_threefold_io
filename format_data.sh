#/bin/bash
 
dir="threefold_data/content/blog"
 
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
    break
done;
