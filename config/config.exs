use Mix.Config

config :logger, :console,
  level: :info,
  format: "$message"

# disable lager output
config :lager,
  error_logger_redirect: false,
  handlers: []

# config :todo_api, TodoApi.Postgres,
#   adapter: Ecto.Adapters.Postgres,
#   url: {:system, "READ_DATABASE_URL"},
#   ssl: String.contains?(System.get_env("READ_DATABASE_URL") || "", "ssl=true")

config :todo_api, TodoApi.Postgres,
  adapter: Ecto.Adapters.Postgres,
  url: {:system, "DATABASE_URL"}
