defmodule Simulator.SolutionOptions do
  @moduledoc """
  The SolutionOptions context.
  """

  import Ecto.Query, warn: false
  alias Simulator.Repo
  alias Simulator.SolutionOption

  @doc """
  Returns the list of solution_options.

  ## Examples

      iex> list_solution_options()
      [%SolutionOption{}, ...]

  """
  def list_solution_options do
    Repo.all(SolutionOption)
  end

  @doc """
  Gets a single solution_option.

  Raises `Ecto.NoResultsError` if the SolutionOption does not exist.

  ## Examples

      iex> get_solution_option!(123)
      %SolutionOption{}

      iex> get_solution_option!(456)
      ** (Ecto.NoResultsError)

  """
  def get_solution_option!(id), do: Repo.get!(SolutionOption, id)

  @doc """
  Creates a solution_option.

  ## Examples

      iex> create_solution_option(%{field: value})
      {:ok, %SolutionOption{}}

      iex> create_solution_option(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_solution_option(attrs \\ %{}) do
    %SolutionOption{}
    |> SolutionOption.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a solution_option.

  ## Examples

      iex> update_solution_option(solution_option, %{field: new_value})
      {:ok, %SolutionOption{}}

      iex> update_solution_option(solution_option, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_solution_option(%SolutionOption{} = solution_option, attrs) do
    solution_option
    |> SolutionOption.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a solution_option.

  ## Examples

      iex> delete_solution_option(solution_option)
      {:ok, %SolutionOption{}}

      iex> delete_solution_option(solution_option)
      {:error, %Ecto.Changeset{}}

  """
  def delete_solution_option(%SolutionOption{} = solution_option) do
    Repo.delete(solution_option)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking solution_option changes.

  ## Examples

      iex> change_solution_option(solution_option)
      %Ecto.Changeset{data: %SolutionOption{}}

  """
  def change_solution_option(%SolutionOption{} = solution_option, attrs \\ %{}) do
    SolutionOption.changeset(solution_option, attrs)
  end
end
