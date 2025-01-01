function update --description "Update system and flatpak packges"
    sudo xbps-install -Su
    sudo flatpak update
end
