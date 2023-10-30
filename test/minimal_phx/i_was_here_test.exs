defmodule MinimalPhx.IWasHereTest do
  use MinimalPhx.DataCase

  alias MinimalPhx.IWasHere

  describe "user" do
    alias MinimalPhx.IWasHere.User

    import MinimalPhx.IWasHereFixtures

    @invalid_attrs %{name: nil, datetime: nil}

    test "list_user/0 returns all user" do
      user = user_fixture()
      assert IWasHere.list_user() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert IWasHere.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{name: "some name", datetime: ~U[2023-10-29 09:27:00Z]}

      assert {:ok, %User{} = user} = IWasHere.create_user(valid_attrs)
      assert user.name == "some name"
      assert user.datetime == ~U[2023-10-29 09:27:00Z]
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = IWasHere.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{name: "some updated name", datetime: ~U[2023-10-30 09:27:00Z]}

      assert {:ok, %User{} = user} = IWasHere.update_user(user, update_attrs)
      assert user.name == "some updated name"
      assert user.datetime == ~U[2023-10-30 09:27:00Z]
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = IWasHere.update_user(user, @invalid_attrs)
      assert user == IWasHere.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = IWasHere.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> IWasHere.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = IWasHere.change_user(user)
    end
  end
end
