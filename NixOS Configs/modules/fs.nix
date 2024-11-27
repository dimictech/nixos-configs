{
  fileSystems."/mnt/windows" = {
    device = "/dev/nvme1n1p3";
    fsType = "ntfs-3g";
    options = [ "defaults" "uid=1000" "gid=1000" "umask=0022" ];
  };
    fileSystems."/mnt/data" = {
    device = "/dev/nvme0n1p1";
    fsType = "auto";
    options = [ "rw" "noatime" ];
  };

  systemd.tmpfiles.rules = [
    "d /mnt/data 0755 petar petar -"
  ];
}

