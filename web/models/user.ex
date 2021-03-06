defmodule Leaves.User do
  use Leaves.Web, :model

  schema "users" do
    field    :name, :string
    field    :email, :string
    field    :password, :string, virtual: true
    field    :password_hash, :string
    has_many :copies, Leaves.Copy

    timestamps
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, ~w(name email), [])
    |> validate_length(:name, min: 1, max: 40)
  end

  def registration_changeset(model, params) do
    model
    |> changeset(params)
    |> cast(params, ~w(password), [])
    |> validate_length(:password, min: 8, max: 100)
    |> put_pass_hash
  end

  defp put_pass_hash(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: pass}} ->
        put_change(changeset, :password_hash, Comeonin.Bcrypt.hashpwsalt(pass))
      _ ->
        changeset
    end
  end
end