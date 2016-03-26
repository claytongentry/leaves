defmodule Leaves.Copy do
  use Leaves.Web, :model

  schema "copies" do
    belongs_to :user, Leaves.User
    belongs_to :book, Leaves.Book
    field      :is_rented, :boolean
    field      :price, :float

    timestamps
  end
end