{ lib, ... }:
{
  config.eiros.users.eiros.extra_groups = lib.mkDefault [
    "wheel"
    "networkmanager"
    "libvirtd"
    "docker"
    "input"
  ];
}
