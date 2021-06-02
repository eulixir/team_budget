# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :team_budget,
  ecto_repos: [TeamBudget.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :team_budget, TeamBudgetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kA3P/2yFzPzdlrfv5zvea9NR1V9/Xn2hrGWihFmF+iHifpiCC7ZyV4r9c6CWZVTR",
  render_errors: [view: TeamBudgetWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: TeamBudget.PubSub,
  live_view: [signing_salt: "Mf4DWVs7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
