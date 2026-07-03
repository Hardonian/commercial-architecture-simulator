defmodule Simulator.RolloutPhases do
  @moduledoc """
  The RolloutPhases context.
  """

  import Ecto.Query, warn: false
  alias Simulator.Repo
  alias Simulator.RolloutPhase

  @doc """
  Returns the list of rollout_phases.

  ## Examples

      iex> list_rollout_phases()
      [%RolloutPhase{}, ...]

  """
  def list_rollout_phases do
    Repo.all(RolloutPhase)
  end

  @doc """
  Gets a single rollout_phase.

  Raises `Ecto.NoResultsError` if the RolloutPhase does not exist.

  ## Examples

      iex> get_rollout_phase!(123)
      %RolloutPhase{}

      iex> get_rollout_phase!(456)
      ** (Ecto.NoResultsError)

  """
  def get_rollout_phase!(id), do: Repo.get!(RolloutPhase, id)

  @doc """
  Creates a rollout_phase.

  ## Examples

      iex> create_rollout_phase(%{field: value})
      {:ok, %RolloutPhase{}}

      iex> create_rollout_phase(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_rollout_phase(attrs \\ %{}) do
    %RolloutPhase{}
    |> RolloutPhase.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a rollout_phase.

  ## Examples

      iex> update_rollout_phase(rollout_phase, %{field: new_value})
      {:ok, %RolloutPhase{}}

      iex> update_rollout_phase(rollout_phase, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_rollout_phase(%RolloutPhase{} = rollout_phase, attrs) do
    rollout_phase
    |> RolloutPhase.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a rollout_phase.

  ## Examples

      iex> delete_rollout_phase(rollout_phase)
      {:ok, %RolloutPhase{}}

      iex> delete_rollout_phase(rollout_phase)
      {:error, %Ecto.Changeset{}}

  """
  def delete_rollout_phase(%RolloutPhase{} = rollout_phase) do
    Repo.delete(rollout_phase)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking rollout_phase changes.

  ## Examples

      iex> change_rollout_phase(rollout_phase)
      %Ecto.Changeset{data: %RolloutPhase{}}

  """
  def change_rollout_phase(%RolloutPhase{} = rollout_phase, attrs \\ %{}) do
    RolloutPhase.changeset(rollout_phase, attrs)
  end
end
