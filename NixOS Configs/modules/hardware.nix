{ config, pkgs, ... }:

{
  hardware.cpu.intel.updateMicrocode = true;
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
  powerManagement.cpuFreqGovernor = "performance";
  services.thermald.enable = true;
  boot.kernelParams = [ "intel_pstate=enable" ];
}

