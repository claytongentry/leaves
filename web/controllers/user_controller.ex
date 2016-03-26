defmodule Leaves.UserController do
  use Leaves.Web, :controller

  def show(conn, %{"id" => id}) do
    user = Repo.get(Leaves.User, id) |> IO.inspect
    render conn, "show.html", user: user
  end
end