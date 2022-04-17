import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :card_demo, CardDemoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "QY7I6KGF15TT/K9rWgmlQpZiTBd/Ie2IcHkaB6JtznzC+xiNV0D04QHrFsI1OAv/",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
