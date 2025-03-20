#!/usr/bin/env fish
git add .
sudo nixos-rebuild switch --flake .#zfn-nix && home-manager switch --flake .#zfn
