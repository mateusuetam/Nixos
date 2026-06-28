{ config, lib, pkgs, ... }:

{
imports = [
./hardware-configuration.nix
../users/mateus/settings/course.nix
];

boot = {
loader = {
systemd-boot.enable = true;
efi.canTouchEfiVariables = true;
timeout = 1;
};
kernelPackages = pkgs.linuxPackages_7_0;
kernelParams = [
"nowatchdog"
"nmi_watchdog=0"
];
blacklistedKernelModules = [
"sp5100_tco"
"iTCO_wdt"
"iTCO_vendor_support"
"watchdog"
"thunderbolt"
"ahci"
"libahci"
"joydev"
"mousedev"
];
};

networking = {
hostName = "pc";
networkmanager.enable = true;
firewall.enable = true;
modemmanager.enable = false;
};

systemd.services.NetworkManager-wait-online.enable = false;

console = {
keyMap = "br-abnt2";
};
i18n = {
defaultLocale = "pt_BR.UTF-8";
};
time.timeZone = "America/Recife";

nix = {
settings = {
auto-optimise-store = true;
experimental-features = [
"nix-command"
"flakes"
];
};
gc = {
automatic = true;
dates = "weekly";
options = "--delete-older-than 7d";
};
};

hardware = {
bluetooth.enable = true;
cpu.amd.updateMicrocode = true;
};

security.rtkit.enable = true;

services = {
pipewire = {
enable = true;
alsa.enable = true;
alsa.support32Bit = true;
pulse.enable = true;
};
upower = {
enable = true;
percentageLow = 20;
percentageCritical = 15;
percentageAction = 10;
criticalPowerAction = "Suspend";
allowRiskyCriticalPowerAction = true;
};
displayManager.enable = false;
};

xdg.portal.enable = true;

fonts.packages = with pkgs; [
noto-fonts
noto-fonts-cjk-sans
noto-fonts-color-emoji
];

nixpkgs.config.allowUnfree = true;
programs.niri.enable = true;
my.course.enable = true;

users = {
users.mateus = {
isNormalUser = true;
extraGroups = [ "wheel" "networkmanager" "video" "audio" ];
};
};

home-manager = {
useGlobalPkgs = true;
useUserPackages = true;
backupFileExtension = "backup";
users = {
mateus = ../users/mateus/user.nix;
};
};

documentation = {
man.enable = true;
info.enable = false;
doc.enable = false;
nixos.enable = false;
};

system.stateVersion = "26.05";
}
