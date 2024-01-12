
# GoldenPhoenix Linux

## This project is still very early in development it is not recommended to be used on real hardware at the moment. Use it at your own risk

A simple to install Arch Linux Distribution that can be used by anyone

### Developers:
- [CapCreeperGR](https://github.com/Capcreepergr)

### Screenshots


### Project Information
GoldenPhoenix is based on the archlinux [ArchISO](https://gitlab.archlinux.org/archlinux/archiso) package.

GoldenPhoenix comes bundled with [KDE Plasma](https://kde.org/plasma-desktop/), a feature-rich Desktop Environment, along with a clean modified theme that is very easy to use. In addition to all of this GoldenPhoenix comes with the [Calamares](https://calamares.io/) installer built into the Live Environment to give users an easy to way to get it setup and running

### Installation Guide
- Download the latest GoldenPhoenix ISO file from the releases page
- Use any USB flashing utilities to flash the ISO file into your USB Flash Drive (i.e. [Rufus](https://rufus.ie/en/), [Balena Etcher](https://etcher.balena.io/)
- If using Rufus to flash your USB Flash Drive make sure to choose the DD flashing mode instead of ISO. Skipping this step may prevent you from booting into the Live Environment
- Select the first option in the boot menu
- After entering the desktop you can use the Live Environment to test out software you may want to use. None of the changes you make to the Live Environment will be permanent and will be lost after a restart
- Whenever you wish to start the GoldenPhoenix installation double click on the "Install GoldenPhoenix" icon in the desktop
- Follow the on screen steps to complete the installation
- After finishing the installation you are able to continue using the Live Environment or reboot into your newly installed GoldenPhoenix System

### Building the ISO yourself
- Have an already functional Arch Linux installation
- Install the archiso package into your system `sudo pacman -S archiso`
- Clone this git repository into your system. Make sure to install the git package `sudo pacman -S git` if you have not already `git clone https://github.com/CapCreeperGR/GoldenPhoenix-Linux.git`
- Enter the newly created directory
- Run the build script `./build.sh`
- The final ISO file should be placed into the "output" folder
