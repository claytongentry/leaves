defmodule Leaves.UserController do
  use Leaves.Web, :controller
  alias Leaves.User

  def show(conn, %{"id" => id}) do
    user = Repo.get(User, id) |> IO.inspect
    render conn, "show.html", user: user
  end

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"user" => user_params}) do
    changeset = User.changeset(%User{}, user_params)
    case Repo.insert(changeset) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "#{user.name} created!")
        |> redirect(to: user_path(conn, :show, user.id))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end
end