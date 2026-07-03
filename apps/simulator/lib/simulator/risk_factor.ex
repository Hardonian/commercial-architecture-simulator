defmodule Simulator.RiskFactor do
  @moduledoc """
  Represents a risk factor in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "risk_factors" do
    field :name, :string
    field :description, :string
    field :category, :string
    field :impact, :integer
    field :likelihood, :integer

    timestamps()
  end

  @doc false
  def changeset(risk_factor, attrs) do
    risk_factor
    |> cast(attrs, [:name, :description, :category, :impact, :likelihood])
    |> validate_required([:name, :description, :category, :impact, :likelihood])
  end
end
