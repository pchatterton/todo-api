defmodule TodoApi.Resource.Users do
  use Mazurka.Resource

  let users = User.get_users()

  mediatype Mazurka.Mediatype.Hyperjson do
    action do
      %{
        "collection" => for user <- users do
          link_to(TodoApi.Resource.Users.Read, user: user)
        end
      }
    end
  end
end
