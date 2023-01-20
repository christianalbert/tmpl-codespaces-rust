## update and install some things we should probably have
apt-get update
apt-get install -y \
  apt-utils \
  curl \
  git \
  gnupg2 \
  jq \
  sudo \
  vim \
  build-essential \
  openssl

## Install rustup and common components
curl https://sh.rustup.rs -sSf | sh -s -- -y 

source "$HOME/.cargo/env"

rustup component add rustfmt
rustup component add clippy 

cargo install cargo-expand
cargo install cargo-edit

rustup update

