if ! [ -x "$(command -v starship)" ]; then
  curl -sS https://starship.rs/install.sh | sh
fi

if ! [ -x "$(command -v zoxide)" ]; then
  curl -sS https://webinstall.dev/zoxide | bash
fi
