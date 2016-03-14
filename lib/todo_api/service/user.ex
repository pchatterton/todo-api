defmodule TodoApi.Service.User do
  use Ecto.Schema
  import Ecto.Query
  alias TodoApi.Postgres

  schema "users" do
    field :fname
  end

  def get_users do
    query = from u in __MODULE__,
         select: u
    {:ok, Postgres.all(query)}
  end

  def get(user) do
    {:ok, user}
  end
end
