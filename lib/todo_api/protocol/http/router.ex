defmodule TodoApi.Protocol.HTTP.Router do
  use Mazurka.Protocol.HTTP.Router
  use Mazurka.Mediatype.Hyperjson.Hyperpath
  use TodoApi.Dispatch

  plug :match
  if Mix.env == :dev do
    use Plug.Debugger
    plug Plug.Logger
  end
  plug :dispatch

  get     "/",                          TodoApi.Resource.Root
  get     "/users",                     TodoApi.Resource.Users
  get     "/users/:user",               TodoApi.Resource.Users.Read

  match   _,                            TodoApi.Resource.Error.NotFound
end