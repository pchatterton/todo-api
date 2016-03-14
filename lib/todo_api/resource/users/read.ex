defmodule TodoApi.Resource.Users.Read do
  use Mazurka.Resource

  param user do
    User.get(value)
  end

  mediatype Mazurka.Mediatype.Hyperjson do
    action do
      %{
        "id" => user.id
        "name" => user.fname
      }
    end
  end

end