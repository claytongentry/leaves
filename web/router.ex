defmodule Leaves.Router do
  use Leaves.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Leaves do
    pipe_through :browser # Use the default browser stack

    get "/",              PageController,   :index
    resources "/rentals", RentalController, only: [:index]
    resources "/books",   BookController, only: [:index, :show, :new, :create]
    resources "/users",   UserController, only: [:show, :new, :create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Leaves do
  #   pipe_through :api
  # end
end
