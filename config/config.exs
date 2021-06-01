# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bug,
  ecto_repos: [Bug.Repo]

# Configures the endpoint
config :bug, BugWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KCiG2OXHME7T6ludp0AahQjozX3xwnaxi8P5D+AwLvHqsDULBXVb/2ezhssMzlV2",
  render_errors: [view: BugWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Bug.PubSub,
  live_view: [signing_salt: "lYqkRfGh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
