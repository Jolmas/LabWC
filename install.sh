#!/bin/bash

echo "Installing themes..."

# -------------------------
# Directories
# -------------------------
src="./"
dest="$HOME/.local/share/themes"

# List of themes to install
themes=(
    "Lab-Aqua-Dark"
    "Lab-Aqua-Dots"
    "Lab-Aqua-Gradient"
    "Lab-Aqua-Pills"
    "Lab-Aqua7"
    "Lab-Aquadrop"
    "Lab-Arc-Dark"
    "Lab-Arc-Light"
    "Lab-Blueberry"
    "Lab-Bluelook"
    "Lab-Bluish"
    "Lab-Breeze-Dark"
    "Lab-Breeze-Light"
    "Lab-Brisa"
    "Lab-Brisa-Translucid"
    "Lab-Catppuccin"
    "Lab-Catppuccin-Frappe"
    "Lab-Catppuccin-Latte"
    "Lab-Catppuccin-Macchiato"
    "Lab-Chimera"
    "Lab-Chimera-Dark"
    "Lab-Chimera-Light"
    "Lab-Chimera-Night"
    "Lab-Clearlook-Alfa"
    "Lab-Crocus"
    "Lab-DimGray"
    "Lab-Dracula"
    "Lab-Drak"
    "Lab-Drak-thin"
    "Lab-Edna"
    "Lab-Evergreen"
    "Lab-Latte"
    "Lab-Lila"
    "Lab-Liquid-Dark"
    "Lab-Liquid-Glass"
    "Lab-Mac-Dark"
    "Lab-Mac-Light"
    "Lab-MacOS-Leopard"
    "Lab-MacOS-Lion"
    "Lab-Nord"
    "Lab-Nord-Dark"
    "Lab-Nordic-Blue"
    "Lab-Orchis"
    "Lab-Orchis-Dark"
    "Lab-Oxygen"
    "Lab-Oxygen-Glass"
    "Lab-Purple"
    "Lab-Space-Light"
    "Lab-Sky"
    "Lab-Star"
    "Lab-TokyoNight"
    "Lab-Vintage"
    "Lab-w10"
    "Lab-W11"
    "Lab-W11-Silver"
    "Lab-W11-Dark"
    "Lab-W7"
    "Lab-W7-Clear"
    "Lab-WhiteSur-small"
    "Lab-xp-blue"
    "Lab-xp-metal"
    "Lab-xp-noir"
    "Lab-xp-royale"
)

# --- Check and create destination directory if it doesn't exist ---
if [ ! -d "$dest" ]; then
    echo "Creating destination directory: $dest"
    mkdir -p "$dest"
fi

# --- Installation function ---
install() {
    local source_dir=$1
    local destination_dir=$2
    
    if [ ! -d "$source_dir" ]; then
        echo "Error: Source directory '$source_dir' not found. Exiting."
        exit 1
    fi
    
    for theme in "${themes[@]}"; do
        if [ -d "$source_dir/$theme" ]; then
            echo "Installing $theme..."
            cp -r "$source_dir/$theme" "$destination_dir"
        else
            echo "Warning: Theme directory '$theme' not found. Skipping."
        fi
    done
}

# --- Run installation ---
install "$src" "$dest"

echo ""
echo "Installation complete!"
echo ""
