cd ~/nix-config
nixos-generate-config
cp /etc/nixos/hardware-configuration.nix ~/nix-config/core/hardware/autogen.nix

if [[ "$1" == "defer" ]]
then
    sudo nixos-rebuild boot --flake .#nixos
    echo --- Deferred system update complete ---
    exit
fi

sudo nixos-rebuild switch --flake .#nixos
plasmashell --replace &
echo --- Immediate system update complete ---
