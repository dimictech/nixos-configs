{
    fileSystems."/mnt/data" = {
    device = "/dev/nvme0n1p1";
    fsType = "auto";
    options = [ "rw" "noatime" ];
  };

  systemd.tmpfiles.rules = [
    "d /mnt/data 0755 petar petar -"
  ];
}

