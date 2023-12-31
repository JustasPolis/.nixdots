{ config, pkgs, lib, inputs, system, ... }: {

  home.username = "justin";
  home.homeDirectory = "/home/justin";
  home.file.".config/hypr".source = ./hypr;
  home.file.".config/kitty".source = ./kitty;
  home.file.".config/wallpapers".source = ./wallpapers;
  home.file.".config/swayidle/config".source = ./swayidle/config;
  home.file.".config/swaylock/config".source = ./swaylock/config;
  home.file.".config/fish/config.fish".source = ./fish/config.fish;
  home.file.".config/starship.toml".source = ./starship/starship.toml;
  home.file.".config/nvim".source = ./nvim;
  home.file.".config/swayimg/config".source = ./swayimg/config;
  home.file.".config/gtk-4.0".source = ./gtk-4.0;
  home.file.".config/wofi".source = ./wofi;
  home.file.".config/eww".source = ./eww;

  home.packages = with pkgs; [
    kitty
    nixfmt
    ripgrep
    jq
    yq-go
    neovim
    swaylock-effects
    neofetch
    swayidle
    hyprpaper
    neovim
    eza
    clang
    nodejs
    go
    lua-language-server
    wofi
    eww-wayland
    imagemagick
    lf
    swayimg
    stylua
    wl-clipboard
    rustup
    sway-audio-idle-inhibit
    firefox-unwrapped
    mullvad
    celluloid
    transmission-gtk
    shfmt
    floorp
  ];

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
