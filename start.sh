#/bin/bash
set -ex

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd ${BASE_DIR}

hero installers -n zola

# initialized and configures tailwind if not configured
if [ ! -f "tailwind.config.js" ]
then
    tailwindcss init
    sed -i '' "s|  content: \\[\\],|  content: \\['./templates/**/*.html'\\],|g" tailwind.config.js
fi

# compiles tailwind css & launches locally
rm -rf public static/css
tailwindcss -i css/index.css -o ./static/css/index.css --watch & zola serve &

# compiles tailwind css for prod & builds project
tailwindcss -i css/index.css -o ./static/css/index.css --minify

killall zola

zola serve

# kills zola and tw bg processes on interrupt
trap 'kill $(jobs -p); exit 1' INT
wait

