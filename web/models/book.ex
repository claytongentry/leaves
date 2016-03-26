defmodule Leaves.Book do
  use Leaves.Web, :model

  schema "books" do
    field    :title, :string
    field    :author, :string
    field    :image, :string
    field    :pages, :integer
    has_many :copies, Leaves.Copy

    timestamps
  end
end