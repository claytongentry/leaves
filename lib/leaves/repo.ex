defmodule Leaves.Repo do
  use Ecto.Repo, otp_app: :leaves
  # def all(Leaves.User) do
  #   [
  #     %Leaves.User{id: "1", name: "José", username: "josevalim", password: "elixir"},
  #     %Leaves.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs"},
  #     %Leaves.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"}
  #   ]
  # end
  # def all(Leaves.Book) do
  #   [
  #     %Leaves.Book{id: "1", title: "War and Peace", author: "Leo Tolstoy", image: "/images/warpeace.jpg"},
  #     %Leaves.Book{id: "2", title: "Catch-22", author: "Joseph Heller", image: "/images/catch22.jpg"},
  #     %Leaves.Book{id: "3", title: "Slaughterhouse-Five", author: "Kurt Vonnegut", image: "/images/slaughter.jpg"}
  #   ]
  # end
  # def all(Leaves.Rental) do
  #   [
  #     %Leaves.Rental{book_id: "2", renter_id: "1", provider_id: "3", start_date: "2016-03-15", return_date: "2016-03-31"},
  #     %Leaves.Rental{book_id: "3", renter_id: "2", provider_id: "3", start_date: "2016-03-11", return_date: "2016-03-28"},
  #     %Leaves.Rental{book_id: "1", renter_id: "3", provider_id: "1", start_date: "2016-03-17", return_date: "2016-03-22"}
  #   ]
  # end
  # def all(Leaves.Copy) do
  #   [
  #     %Leaves.Copy{user_id: "2", book_id: "1", is_rented: false, price: 11.00},
  #     %Leaves.Copy{user_id: "1", book_id: "2", is_rented: true, price: 9.50},
  #     %Leaves.Copy{user_id: "3", book_id: "3", is_rented: false, price: 5.45}
  #   ]
  # end
  # def all(_module), do: []
  #
  # def get(module, id) do
  #   Enum.find all(module), fn map -> map.id == id end
  # end
  #
  # def get_by(module, params) do Enum.find all(module), fn map ->
  #   Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end) end
  # end
end
