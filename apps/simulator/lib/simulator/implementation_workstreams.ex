defmodule Simulator.ImplementationWorkstreams do
  @moduledoc """
  The ImplementationWorkstreams context.
  """

  import Ecto.Query, warn: false
  alias Simulator.Repo
  alias Simulator.ImplementationWorkstream

  @doc """
  Returns the list of implementation_workstreams.

  ## Examples

      iex> list_implementation_workstreams()
      [%ImplementationWorkstream{}, ...]

  """
  def list_implementation_workstreams do
    Repo.all(ImplementationWorkstream)
  end

  @doc """
  Gets a single implementation_workstream.

  Raises `Ecto.NoResultsError` if the ImplementationWorkstream does not exist.

  ## Examples

      iex> get_implementation_workstream!(123)
      %ImplementationWorkstream{}

      iex> get_implementation_workstream!(456)
      ** (Ecto.NoResultsError)

  """
  def get_implementation_workstream!(id), do: Repo.get!(ImplementationWorkstream, id)

  @doc """
  Creates an implementation_workstream.

  ## Examples

      iex> create_implementation_workstream(%{field: value})
      {:ok, %ImplementationWorkstream{}}

      iex> create_implementation_workstream(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_implementation_workstream(attrs \\ %{}) do
    %ImplementationWorkstream{}
    |> ImplementationWorkstream.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates an implementation_workstream.

  ## Examples

      iex> update_implementation_workstream(implementation_workstream, %{field: new_value})
      {:ok, %ImplementationWorkstream{}}

      iex> update_implementation_workstream(implementation_workstream, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_implementation_workstream(%ImplementationWorkstream{} = implementation_workstream, attrs) do
    implementation_workstream
    |> ImplementationWorkstream.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes an implementation_workstream.

  ## Examples

      iex> delete_implementation_workstream(implementation_workstream)
      {:ok, %ImplementationWorkstream{}}

      iex> delete_implementation_workstream(implementation_workstream)
      {:error, %Ecto.Changeset{}}

  """
  def delete_implementation_workstream(%ImplementationWorkstream{} = implementation_workstream) do
    Repo.delete(implementation_workstream)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking implementation_workstream changes.

  ## Examples

      iex> change_implementation_workstream(implementation_workstream)
      %Ecto.Changeset{data: %ImplementationWorkstream{}}

  """
  def change_implementation_workstream(%ImplementationWorkstream{} = implementation_workstream, attrs \\ %{}) do
    ImplementationWorkstream.changeset(implementation_workstream, attrs)
  end
end
