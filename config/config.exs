# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :funbox,
  ecto_repos: [Funbox.Repo]

# Configures the endpoint
config :funbox, FunboxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EaReBARcjA06OLlwq3JZxeFGkW6vxZxJ/m3mfbI0qN1PQJng1S1Zk2mG6N8R0sUz",
  render_errors: [view: FunboxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Funbox.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "46UjiVHo"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
