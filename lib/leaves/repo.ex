defmodule Leaves.Repo do
  def all(Leaves.User) do
    [
      %Leaves.User{id: "1", name: "José", username: "josevalim", password: "elixir"},
      %Leaves.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs"},
      %Leaves.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"}
    ]
  end
  def all(Leaves.Book) do
    [
      %Leaves.Book{id: "1", title: "War and Peace", author: "Leo Tolstoy", image: "/images/warpeace.jpg", is_rented: false},
      %Leaves.Book{id: "2", title: "Catch-22", author: "Joseph Heller", image: "/images/catch22.jpg", is_rented: false},
      %Leaves.Book{id: "3", title: "Slaughterhouse-Five", author: "Kurt Vonnegut", image: "/images/slaughter.jpg", is_rented: true}
    ]
  end
  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do Enum.find all(module), fn map ->
    Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end) end
  end
end
