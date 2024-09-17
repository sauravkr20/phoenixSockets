import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :my_phoenix_app, MyPhoenixAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "lRCi/mEfhMJCe1ExVhSFGSF/cSd8mFESoFJ8WzGlQcs9W50llDEEPFeN796SN0VX",
  server: false

# In test we don't send emails.
config :my_phoenix_app, MyPhoenixApp.Mailer,
  adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
