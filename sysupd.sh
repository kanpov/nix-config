cd ~/nix-config
nixos-generate-config
cp /etc/nixos/hardware-configuration.nix ~/nix-config/core/hardware/autogen.nix
git add .

if [[ "$1" == "defer" ]]
then
    sudo nixos-rebuild boot --flake .#nixos
    echo --- Deferred system update complete ---

    if [[ "$2" == "reboot" ]]
    then
        systemctl reboot
    fi

    exit
fi

sudo nixos-rebuild switch --flake .#nixos

if [[ "$1" != "norestart" ]]
then
    nohup plasmashell --replace &
fi

echo --- Immediate system update complete ---
