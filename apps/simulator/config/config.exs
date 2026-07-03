# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :simulator,
  ecto_repos: [Simulator.Repo]

# Configures the endpoint
config :simulator, SimulatorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qXLwRJHzZmXQ3+08gExgtQ7PDOSrwX0SXo/diBb93YdBuR6JS7GrrrxJhsAuN/jt",
  render_errors: [view: SimulatorWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Simulator.PubSub,
  live_view: [signing_salt: "MFvtRAPk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
