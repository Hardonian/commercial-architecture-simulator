defmodule Simulator.RiskFactors do
  @moduledoc """
  The RiskFactors context.
  """

  import Ecto.Query, warn: false
  alias Simulator.Repo
  alias Simulator.RiskFactor

  @doc """
  Returns the list of risk_factors.

  ## Examples

      iex> list_risk_factors()
      [%RiskFactor{}, ...]

  """
  def list_risk_factors do
    Repo.all(RiskFactor)
  end

  @doc """
  Gets a single risk_factor.

  Raises `Ecto.NoResultsError` if the RiskFactor does not exist.

  ## Examples

      iex> get_risk_factor!(123)
      %RiskFactor{}

      iex> get_risk_factor!(456)
      ** (Ecto.NoResultsError)

  """
  def get_risk_factor!(id), do: Repo.get!(RiskFactor, id)

  @doc """
  Creates a risk_factor.

  ## Examples

      iex> create_risk_factor(%{field: value})
      {:ok, %RiskFactor{}}

      iex> create_risk_factor(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_risk_factor(attrs \\ %{}) do
    %RiskFactor{}
    |> RiskFactor.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a risk_factor.

  ## Examples

      iex> update_risk_factor(risk_factor, %{field: new_value})
      {:ok, %RiskFactor{}}

      iex> update_risk_factor(risk_factor, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_risk_factor(%RiskFactor{} = risk_factor, attrs) do
    risk_factor
    |> RiskFactor.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a risk_factor.

  ## Examples

      iex> delete_risk_factor(risk_factor)
      {:ok, %RiskFactor{}}

      iex> delete_risk_factor(risk_factor)
      {:error, %Ecto.Changeset{}}

  """
  def delete_risk_factor(%RiskFactor{} = risk_factor) do
    Repo.delete(risk_factor)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking risk_factor changes.

  ## Examples

      iex> change_risk_factor(risk_factor)
      %Ecto.Changeset{data: %RiskFactor{}}

  """
  def change_risk_factor(%RiskFactor{} = risk_factor, attrs \\ %{}) do
    RiskFactor.changeset(risk_factor, attrs)
  end
end
