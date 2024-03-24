cd ~/nix-config
sudo git add . # sometimes the operation will be refused as non-root
host = `cat /etc/hostname`

if [[ "$1" == "defer" ]]
then
    sudo nixos-rebuild boot --flake .#$host
    echo --- Deferred system update complete ---

    if [[ "$2" == "reboot" ]]
    then
        systemctl reboot
    fi

    exit
fi

sudo nixos-rebuild switch --flake .#$host

if [[ "$1" != "norestart" ]]
then
    nohup plasmashell --replace &
fi

echo --- Immediate system update complete ---
