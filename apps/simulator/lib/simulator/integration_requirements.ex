defmodule Simulator.IntegrationRequirements do
  @moduledoc """
  The IntegrationRequirements context.
  """

  import Ecto.Query, warn: false
  alias Simulator.Repo
  alias Simulator.IntegrationRequirement

  @doc """
  Returns the list of integration_requirements.

  ## Examples

      iex> list_integration_requirements()
      [%IntegrationRequirement{}, ...]

  """
  def list_integration_requirements do
    Repo.all(IntegrationRequirement)
  end

  @doc """
  Gets a single integration_requirement.

  Raises `Ecto.NoResultsError` if the IntegrationRequirement does not exist.

  ## Examples

      iex> get_integration_requirement!(123)
      %IntegrationRequirement{}

      iex> get_integration_requirement!(456)
      ** (Ecto.NoResultsError)

  """
  def get_integration_requirement!(id), do: Repo.get!(IntegrationRequirement, id)

  @doc """
  Creates an integration_requirement.

  ## Examples

      iex> create_integration_requirement(%{field: value})
      {:ok, %IntegrationRequirement{}}

      iex> create_integration_requirement(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_integration_requirement(attrs \\ %{}) do
    %IntegrationRequirement{}
    |> IntegrationRequirement.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates an integration_requirement.

  ## Examples

      iex> update_integration_requirement(integration_requirement, %{field: new_value})
      {:ok, %IntegrationRequirement{}}

      iex> update_integration_requirement(integration_requirement, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_integration_requirement(%IntegrationRequirement{} = integration_requirement, attrs) do
    integration_requirement
    |> IntegrationRequirement.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes an integration_requirement.

  ## Examples

      iex> delete_integration_requirement(integration_requirement)
      {:ok, %IntegrationRequirement{}}

      iex> delete_integration_requirement(integration_requirement)
      {:error, %Ecto.Changeset{}}

  """
  def delete_integration_requirement(%IntegrationRequirement{} = integration_requirement) do
    Repo.delete(integration_requirement)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking integration_requirement changes.

  ## Examples

      iex> change_integration_requirement(integration_requirement)
      %Ecto.Changeset{data: %IntegrationRequirement{}}

  """
  def change_integration_requirement(%IntegrationRequirement{} = integration_requirement, attrs \\ %{}) do
    IntegrationRequirement.changeset(integration_requirement, attrs)
  end
end
