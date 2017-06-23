defmodule Discuss.PageController do
  use Discuss.Web, :controller

  def index(conn, params) do
    render conn, "index.html"
  end
end
