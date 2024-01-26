set +ex
# Check if tailwindcss is already installed
if command -v tailwindcss &> /dev/null; then
    echo "tailwindcss is already installed."
else
    # checks OS and architecture for correct release
    echo "Installing & building tailwind..."
    
    ASSET="tailwindcss"
    
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        ASSET="$ASSET-linux"
        elif [[ "$OSTYPE" == "darwin"* ]]; then
        ASSET="$ASSET-macos"
    fi
    if [[ "$(uname -m)" == "x86_64"* ]]; then
        ASSET="$ASSET-x64"
        elif [[ "$(uname -m)" == "arm64"* ]]; then
        ASSET="$ASSET-arm64"
    fi
    pushd /tmp
    curl -sLO "https://github.com/tailwindlabs/tailwindcss/releases/latest/download/${ASSET}"
    chmod +x $ASSET
    mv $ASSET /usr/local/bin/tailwindcss
    popd
fi
source ./env.sh
# initialized and configures tailwind if not configured
if [ ! -f "tailwind.config.js" ]
then
    ./tailwindcss init
    sed -i '' "s|  content: \\[\\],|  content: \\['./templates/**/*.html'\\],|g" tailwind.config.js
fi

# compiles tailwind css & launches locally
# rm -rf public static/css
# ./tailwindcss -i css/index.css -o ./static/css/index.css --watch
# zola serve &
# compiles tailwind css for prod & builds project
# ./tailwindcss -i css/index.css -o ./static/css/index.css --minify
# zola build
# # kills zola and tw bg processes on interrupt
# trap 'kill $(jobs -p); exit 1' INT
# wait
rm -rf public static/css
tailwindcss -i css/index.css -o ./static/css/index.css --minify
zola build -o ~/Documents/web/$NAME/
open ~/Documents/web/$NAME/index.html