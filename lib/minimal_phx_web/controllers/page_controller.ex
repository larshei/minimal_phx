defmodule MinimalPhxWeb.PageController do
  use MinimalPhxWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def health(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.

    conn
    |> resp(:ok, "ok")
  end
end
