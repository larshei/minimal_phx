defmodule MinimalPhxWeb.IWasHereController do
  alias MinimalPhx.IWasHere
  use MinimalPhxWeb, :controller

  def here(conn, %{"name" => name}) do
    IWasHere.create_user(%{"name" => name})

    redirect(conn, to: "/")
  end
end
