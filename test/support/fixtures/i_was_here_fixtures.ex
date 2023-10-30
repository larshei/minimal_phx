defmodule MinimalPhx.IWasHereFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MinimalPhx.IWasHere` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        datetime: ~U[2023-10-29 09:27:00Z],
        name: "some name"
      })
      |> MinimalPhx.IWasHere.create_user()

    user
  end
end
