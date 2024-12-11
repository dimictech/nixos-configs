{ pkgs, fonts, ... }:

{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    jetbrains-mono
    fira-code
    source-code-pro
    inconsolata
    roboto
    open-sans
    lato
    font-awesome
    powerline-fonts
    font-awesome
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "JetBrainsMono"]; })
  ];
}
