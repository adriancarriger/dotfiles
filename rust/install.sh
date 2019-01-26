#!/bin/sh

# Install Rustup
curl https://sh.rustup.rs -sSf | sh -s -- -y

# Install components
rustup component add clippy rls rls-preview rust-analysis rust-src
