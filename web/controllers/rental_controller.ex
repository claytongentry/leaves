defmodule Leaves.RentalController do
  use Leaves.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end