defmodule Leaves.BookController do
  use Leaves.Web, :controller
  alias Leaves.{Repo, Book}

  def index(conn, _params) do
    books = Repo.all(Book)
    render conn, "index.html", books: books
  end

  def show(conn, %{"id" => id}) do
    book = Repo.get(Book, id)
    render conn, "show.html", book: book
  end
end