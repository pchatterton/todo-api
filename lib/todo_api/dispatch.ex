defmodule TodoApi.Dispatch do
  use Mazurka.Dispatch
  alias TodoApi.Service

  service Greeting.world/0, Service.Greeting.world
  service User, Service.User
end