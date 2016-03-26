defmodule Leaves.User do
  use Leaves.Web, :model

  schema "user" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps 
  end
end