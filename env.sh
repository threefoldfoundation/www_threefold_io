export NAME='threefoldio'

SOURCE=${BASH_SOURCE[0]}
DIR_OF_THIS_SCRIPT="$( dirname "$SOURCE" )"
export BASE="$( realpath "$DIR_OF_THIS_SCRIPT" )"

mkdir -p $HOME/hero/bin

get_file_size() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        stat -c%s "$1"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        stat -f%z "$1"
    else
        echo "Unsupported operating system."
        exit 1
    fi
}


# Add ~/hero/bin to PATH
export PATH="$HOME/hero/bin:$PATH"


# Check if tailwindcss exists in ~/hero/bin
if [[ ! -f "$HOME/hero/bin/tailwindcss" ]]; then
    echo "tailwindcss not found in ~/hero/bin. Downloading..."
    
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
    rm -f $ASSET
    rm -f tailwindcss
    curl -sLO "https://github.com/tailwindlabs/tailwindcss/releases/download/v3.4.17/${ASSET}"

    FILE_SIZE=$(get_file_size "$ASSET")
    if [[ $FILE_SIZE -lt 20000000 ]]; then
        echo "Error: Downloaded file size is less than 20MB, download not ok."
        echo "Download URL was: $ASSET"
        rm "$ASSET"
        exit 1
    fi    

    chmod +x $ASSET
    rm -rf "$HOME/hero/bin/tailwindcss"
    mv $ASSET "$HOME/hero/bin/tailwindcss"

    popd
fi

check_zola() {
    if command -v zola &> /dev/null; then
        echo "Zola is already installed."
        return 0
    else
        echo "Zola is not installed. Proceeding with installation."
        return 1
    fi
}

# Function to install Zola on Ubuntu
install_zola_ubuntu() {
    echo "Installing Zola on Ubuntu..."
    sudo apt update
    sudo apt install curl -y
    ZOLA_DEB=$(curl -s https://api.github.com/repos/getzola/zola/releases/latest | grep "browser_download_url.*_amd64.deb" | cut -d '"' -f 4)
    curl -LO $ZOLA_DEB
    sudo dpkg -i $(basename $ZOLA_DEB)
}

# Function to install Zola on Arch Linux
install_zola_arch() {
    echo "Installing Zola on Arch Linux..."
    sudo pacman -Sy zola
}

# Function to install Zola on macOS
install_zola_macos() {
    echo "Installing Zola on macOS..."
    if command -v brew &> /dev/null; then
        brew install zola
    else
        echo "Homebrew is not installed. Please install Homebrew first."
        exit 1
    fi
}

if ! check_zola; then
    # Detect OS and install Zola
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        if command -v apt &> /dev/null; then
            install_zola_ubuntu
        elif command -v pacman &> /dev/null; then
            install_zola_arch
        else
            echo "Unsupported Linux distribution."
            exit 1
        fi
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        install_zola_macos
    else
        echo "Unsupported operating system."
        exit 1
    fi
fi

# Kill any running zola process
if pgrep zola > /dev/null; then
    echo "Stopping running zola process..."
    pkill zola
fi

# Initialize and configure tailwind if not configured
echo "Initializing tailwind..."
if [[ ! -f "tailwind.config.js" ]]; then
    ~/hero/bin/tailwindcss init
    sed -i '' "s|  content: \\[\\],|  content: \\['./templates/**/*.html'\\],|g" tailwind.config.js
fi

# Compile tailwindcss for prod & build project
echo "Compiling tailwindcss and building zola project..."
rm -rf public static/css
tailwindcss -i css/index.css -o ./static/css/index.css --minify


