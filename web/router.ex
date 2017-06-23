defmodule Discuss.Router do
  use Discuss.Web, :router

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

  scope "/", Discuss do
    pipe_through :browser # Use the default browser stack

    #resources "/", TopicController # Routes for all the actions

    get "/", TopicController, :index
    get "/topics/new", TopicController, :new
    get "/topics/:id/edit", TopicController, :edit

    post "/topics", TopicController, :create
    put "/topics/:id", TopicController, :update
    delete "/topics/:id", TopicController, :delete
    #get all
    #get one


    get "auth/github", AuthController, :auth
    get "auth/github/callback", AuthController, :callback

    
  end

  # Other scopes may use custom stacks.
  # scope "/api", Discuss do
  #   pipe_through :api
  # end
end
