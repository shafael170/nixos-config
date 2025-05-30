{ config, pkgs, lib, ... }:

{
  environment.sessionVariables = {
    XMODIFIERS = "@im=fcitx";
  };

  i18n = {
    inputMethod = {
      enable = true;
      type = "fcitx5";
      fcitx5 = {
        waylandFrontend = true;
        addons = with pkgs; [
          fcitx5-gtk
          fcitx5-anthy
          fcitx5-mozc
          fcitx5-skk
          fcitx5-m17n
          fcitx5-openbangla-keyboard
          fcitx5-chinese-addons
        ];
      };
    };
  };
}