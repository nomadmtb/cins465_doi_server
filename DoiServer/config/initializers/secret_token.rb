# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DoiServer::Application.config.secret_key_base = 'fc61a3eae1fe0147ab15611ec7367e7527c7db7e827630eb50e10723c2801cc54550358fa28699de430c9542ec84bee1081fe5d5b60107459daad157e3c164d6'
