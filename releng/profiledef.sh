#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="goldenphoenix"
iso_label="GOLDENPHOENIX_1.0_RUBY"
iso_publisher="CapCreeperGR"
iso_application="GoldenPhoenix Live/Rescue CD"
iso_version="1.0_ruby"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/goldenphoenix-before"]="0:0:755"
  ["/usr/local/bin/goldenphoenix-final"]="0:0:755"
  ["/usr/local/bin/setup-refind"]="0:0:755"
  ["/etc/skel/Desktop/calamares.desktop"]="0:0:755"
  ["/etc/shadow"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
)
