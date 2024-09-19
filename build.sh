#/bin/bash
set -ex

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd ${BASE_DIR}


echo "Starting build..."

hero installers -n zola

# initialized and configures tailwind if not configured
echo "Initializing tailwind..."
if [[ ! -f "tailwind.config.js" ]]
then
    tailwindcss init
    sed -i '' "s|  content: \\[\\],|  content: \\['./templates/**/*.html'\\],|g" tailwind.config.js
fi

# compiles tailwind css for prod & builds project
echo "Compiling tailwindcss and building zola project..."
rm -rf public static/css
tailwindcss -i css/index.css -o ./static/css/index.css --minify
zola build


