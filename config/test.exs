import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :minimal_phx, MinimalPhx.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "minimal_phx_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :minimal_phx, MinimalPhxWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "RFq3J9reTxiVvUn7Qm8Pd053+LImBqeNKgTIheim6x8y4F+6axDKmAt5GL1/VMx1",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
