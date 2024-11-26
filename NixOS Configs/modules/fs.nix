{
  fileSystems."/mnt/windows" = {
    device = "/dev/nvme1n1p3";
    fsType = "ntfs-3g";
    options = [ "defaults" "uid=1000" "gid=1000" "umask=0022" ];
  };
}

