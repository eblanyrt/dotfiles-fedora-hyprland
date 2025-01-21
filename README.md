# eblanyrT's Fedora Hyprland dotfiles
My personal dotfiles for Fedora with Hyprland

## Table of contents
* [Information](#information)
* [Showcase](#showcase)
* [Requirements](#requirements)
    * [Fonts](#fonts)
    * [COPR Repositories](#copr-repositories)
* [Credits](#credits)

## Information
|OS| Fedora Linux|
|:-----|:-------:|
|Wayland Compositor| Hyprland|
|Terminal| Kitty|
|Status Bar| Waybar|
|Application Launcher| Wofi|
|GTK Theme| Sweet Ambar Blue Dark|
|Icons| Breeze Dark|
|Screen Locker| Hyprlock|
|Screenshot Tool| Hyprshot|
|Wallpaper Setter| SWWW|
|Color Scheme Generator| Pywal16|
|Notification Daemon| Dunst|
|File Manager| Yazi|
|Prompt Customization| Starship|

## Showcase
![b92cc287-1736-4b11-bbee-a684f59ec854](https://github.com/user-attachments/assets/b92cc287-1736-4b11-bbee-a684f59ec854)

![5bd80bec-f305-4a8b-91dc-36111b70e6ab](https://github.com/user-attachments/assets/5bd80bec-f305-4a8b-91dc-36111b70e6ab)

![7911fb6a-a7ec-41d8-b9dd-8924d013ea74](https://github.com/user-attachments/assets/7911fb6a-a7ec-41d8-b9dd-8924d013ea74)

![6b0a0efc-3d8f-45d9-bfdb-1a496b86b7fd](https://github.com/user-attachments/assets/6b0a0efc-3d8f-45d9-bfdb-1a496b86b7fd)

## Requirements
In order for these configurations to work seamlessly, you need to install a few things as follows:

### Fonts
I use Font Awesome and FiraCode Nerd Font for the emoji stuffs, such as in `Waybar` and `Starship`. Here are the instructions to install them:
1. Install Font Awesome
    ```
    sudo dnf update
    sudo dnf install fontawesome-fonts fontawesome-6-brands-fonts fontawesome-6-free-fonts
    ```
2. Install FiraCode Nerd Fonts [here](https://www.nerdfonts.com/font-downloads), find the **'FiraCode Nerd Font'** and download it
3. Unzip it, and place all of them under `~/.local/share/fonts/`
    ```
    cd ~/Downloads
    unzip FiraCode.zip -d ~/.local/share/fonts/
    rm ~/.local/share/fonts/LICENSE
    rm ~/.local/share/fonts/README.md
    ```
### COPR Repositories
Using COPR Repositories when you're using Fedora can be quite helpful, especially when you're looking for a software that's not packaged natively in DNF. So here are few of the repositories that may be quite useful if you're using Hyprland in Fedora:
1. I think the coolest COPR Repository for Fedora Hyprland is the one made by **solopasha**, it contains a handful of useful packages aimed for Hyprland users, so that you don't have to rebuild them from sources. If you need to install `SWWW`, `Hyprlock`, or other utility software for Hyprland, you can install them from there.
    ```
    sudo dnf copr enable solopasha/hyprland
    sudo dnf update
    ```
2. If you want to display the `#!#!#!#!#!#!` thing that shows up when I run my terminal, you can use `colorscript` and enable it in your `.bashrc` (if you use bash). The `colorscript` itself was made by **Derek Taylor (DistroTube)**, and he put it [here](https://gitlab.com/dwt1/shell-colo33r-scripts) on GitLab, but I use the already compiled version on COPR made by **foopsss** for convenient reason.
    ```
    sudo dnf copr enable foopsss/shell-color-scripts
    sudo dnf update
    sudo dnf install shell-color-scripts
    ```
3. In my `Waybar` configurations, I use `cava` module for the audio visualization, but that module is not enabled by default when you're installing it from the DNF native repository. So I used the one from a COPR Repository made by **tiritor**.
    ```
    sudo dnf copr enable tiritor/waybar
    sudo dnf install dnf-plugins-core
    sudo echo "priority=1" | sudo tee -a /etc/yum.repos.d/_copr:copr.fedorainfracloud.org:tiritor:waybar.repo
    sudo dnf update
    sudo dnf install waybar
    ```

## Credits
- Terminal - https://github.com/kovidgoyal/kitty
- Status Bar - https://github.com/Alexays/Waybar
- Application Launcher - https://github.com/SimplyCEO/wofi
- Screen Locker - https://github.com/hyprwm/hyprlock
- Screenshot Tool - https://github.com/Gustash/Hyprshot
- Wallpaper Setter - https://github.com/LGFae/swww
- Color Scheme Generator - https://github.com/eylles/pywal16
- Notification Daemon - https://github.com/dunst-project/dunst
- File Manager - https://github.com/sxyazi/yazi
- Prompt Customization - https://starship.rs/
