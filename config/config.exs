# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "schSfA0NvXftgbRIRmA6OaatN2xZMXhuGy8L5+O9TiHRRLDNIlm0YGxYd/lt/eX8",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"


#configuration for ueberauth
config :ueberauth, Ueberauth.Strategy.Github.Oauth,
  client_id: "4b961da58a18d9436800",
  client_secret: "372682f07c4c567c09afdb274af72122e9829e9d"