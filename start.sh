# builds if executable isn't foound
if [[ ! -f "tailwindcss" ]]
then
    sh build.sh
fi

# initialized and configures tailwind if not configured
if [[ ! -f "tailwind.config.js" ]]
then
    ./tailwindcss init
    sed -i '' "s|  content: \\[\\],|  content: \\['./templates/**/*.html'\\],|g" tailwind.config.js
fi

# compiles tailwind css & launches locally
rm -rf public static/css
./tailwindcss -i css/index.css -o ./static/css/index.css --watch & zola serve &

# compiles tailwind css for prod & builds project
./tailwindcss -i css/index.css -o ./static/css/index.css --minify
zola build

# kills zola and tw bg processes on interrupt
trap 'kill $(jobs -p); exit 1' INT
wait

