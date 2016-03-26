defmodule Leaves.Book do
  use Leaves.Web, :model

  schema "book" do
    field :title, :string
    field :author, :string
    field :image, :string
    field :is_rented, :boolean

    timestamps
  end
end