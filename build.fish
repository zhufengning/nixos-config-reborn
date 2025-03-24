#!/usr/bin/env fish
git add .
sudo nixos-rebuild switch --impure --flake .#zfn-nix && home-manager switch --impure -b backup --flake .#zfn
