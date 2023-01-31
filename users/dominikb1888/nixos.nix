{ pkgs, ... }:

{
  # https://github.com/nix-community/home-manager/pull/2408
  environment.pathsToLink = [ "/share/fish" ];

  users.users.dominikb1888 = {
    isNormalUser = true;
    home = "/home/dominikb1888";
    extraGroups = [ "docker" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "";
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDXb9kot04+OrrawSaHz1WF0mYH+AUEsCsfWvWAPv4VZVW3jHXlG9EL7TTfReqB6EboVkdZ2LCsLA5a3mK53WsXTv8LaeVaPxRMLo2MfVA23odYNKRFuIHwLcOvtUMC+K7v593YYCOVfNx8naO60IsVlylpZrVTDZd8AIctvW48QYolObDI7Q6PSTwO3pcIrOCCt4P4RNFiHHrs8k6aGNikWz3A6HKzt443vrNBDggnTRedxGHEDsiNlOOCTQaM2EV5vJPyjvZjKVlLmTQKAJbY6XhY7L0zouIh7sEja2n5uGzVopZU2adZl4F5UorVV9Km/UWIH4nbzK0469QEwS2DhHylfhK+N142XzodjFdrKaJs7di1SciCCTIqBfb4Vnp6SQUZe2Sk11Rdi8C2OpbWQwf1EoJik1KzKMCTSntwOTLLY/oSMYoOtc05V3562GmQwshg0oAnu2c7XI3mMDWsXOyUxPb8MR5x65WQM+GIW4AebSNiFRxD/DMARQyM/2dusGhsbpxkkxqPZhz/T/8nXe0XDBLfPC9IULmTCuZn0R+hMCoUpdc4u2AfADiVxIEEgG+n+TUciS7H7T3+vFSNdIR4mca51z/oHZC0x0vMMwac+faLaX0ZaSGxD2TegoI+qB6nNyPmPpzfsVxPtBR/scUqOTnD3JUq5H5WfRkpoQ== dominikb1888@Dominiks-MBP"
    ];
  };

  nixpkgs.overlays = import ../../lib/overlays.nix ++ [
    (import ./vim.nix)
  ];
}
