function update --description "Update system and flatpak packges"
    sudo xbps-install -Su
    command -v flatpak && sudo flatpak update
end
