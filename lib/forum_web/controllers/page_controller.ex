defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def users(conn, _params) do
    IO.puts("User hit the fucntion!")

    users = [
      %{id: 1, name: "Pema", age: 21},
      %{id: 2, name: "Yams", age: 20},
      %{id: 3, name: "Chims", age: 19}
    ]

    json(conn, %{users: users})
  end
end
