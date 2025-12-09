{ config, lib, ... }:
let
  eiros_dms = config.eiros.system.desktop_environment.dank_material_shell.enable;
in
{
  config.eiros.users.eiros = {
    mangowc = {
      keybinds = {
        spotlight = lib.mkIf config.eiros.system.desktop_environment.dank_material_shell.enable {
          modifier_keys = [ "SUPER" ];
          key_symbol = "d";
          flag_modifiers = [ "r" ];
          mangowc_command = "spawn_shell";
          command_arguments = "dms ipc call spotlight toggle";
        };
        close_window = {
          modifier_keys = [ "SUPER" ];
          key_symbol = "q";
          mangowc_command = "killclient";
        };
        quit = {
          modifier_keys = [
            "SUPER"
            "SHIFT"
          ];
          key_symbol = "q";
          mangowc_command = "quit";
        };
        terminal = {
          modifier_keys = [ "SUPER" ];
          key_symbol = "t";
          mangowc_command = "spawn";
          command_arguments = "ghostty";
        };
      };
    };
  };
}
