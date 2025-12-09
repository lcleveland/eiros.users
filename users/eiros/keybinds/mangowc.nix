{ config, lib, ... }:
let
  eiros_dms = config.eiros.system.desktop_environment.dank_material_shell.enable;
in
{
  config.eiros.users.eiros = {
    mangowc = {
      keybinds = {
        launch_spotlight = lib.mkIf config.eiros.system.desktop_environment.dank_material_shell.enable {
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
        quit_mangowc = {
          modifier_keys = [
            "SUPER"
            "SHIFT"
          ];
          key_symbol = "q";
          mangowc_command = "quit";
        };
        launch_terminal = {
          modifier_keys = [ "SUPER" ];
          key_symbol = "t";
          mangowc_command = "spawn";
          command_arguments = "ghostty";
        };
        switch_focus_left = {
          modifier_keys = [ "SUPER" ];
          key_symbol = "h";
          mangowc_command = "focusdir";
          command_arguments = "left";
        };
        switch_focus_right = {
          modifier_keys = [ "SUPER" ];
          key_symbol = "l";
          mangowc_command = "focusdir";
          command_arguments = "right";
        };
        switch_focus_up = {
          modifier_keys = [ "SUPER" ];
          key_symbol = "k";
          mangowc_command = "focusdir";
          command_arguments = "up";
        };
        switch_focus_down = {
          modifier_keys = [ "SUPER" ];
          key_symbol = "j";
          mangowc_command = "focusdir";
          command_arguments = "down";
        };
      };
    };
  };
}
