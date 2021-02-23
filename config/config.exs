# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :deployer,
  ecto_repos: [Deployer.Repo]

# Configures the endpoint
config :deployer, DeployerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oR8IL7b64nxs5xFb264qm12odDnFOIbmArkUnKepzM8evZ04m4KsTTPL4h63b1oX",
  render_errors: [view: DeployerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Deployer.PubSub,
  live_view: [signing_salt: "0SUfd3+G"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
