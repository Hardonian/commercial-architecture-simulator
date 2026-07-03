defmodule Simulator.IntegrationRequirement do
  @moduledoc """
  Represents an integration requirement in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "integration_requirements" do
    field :name, :string
    field :description, :string
    field :complexity_score, :integer
    field :estimated_effort_hours, :integer

    timestamps()
  end

  @doc false
  def changeset(integration_requirement, attrs) do
    integration_requirement
    |> cast(attrs, [:name, :description, :complexity_score, :estimated_effort_hours])
    |> validate_required([:name, :description, :complexity_score, :estimated_effort_hours])
  end
end
