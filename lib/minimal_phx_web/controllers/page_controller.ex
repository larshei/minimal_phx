defmodule MinimalPhxWeb.PageController do
  alias MinimalPhx.IWasHere
  use MinimalPhxWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false, users: IWasHere.last_5())
  end

  def health(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.

    conn
    |> resp(:ok, "ok")
  end
end
