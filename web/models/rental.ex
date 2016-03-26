defmodule Leaves.Rental do
  use Leaves.Web, :model

  schema "rentals" do
    belongs_to :book, Leaves.Book
    belongs_to :renter, Leaves.User
    belongs_to :provider, Leaves.User
    field :start_date, Ecto.Date
    field :return_date, Ecto.Date

    timestamps
  end
end