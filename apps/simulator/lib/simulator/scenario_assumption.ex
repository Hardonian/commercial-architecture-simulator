defmodule Simulator.ScenarioAssumption do
  @moduledoc """
  Represents an assumption for a scenario in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "scenario_assumptions" do
    belongs_to :scenario, Simulator.Scenario
    field :key, :string
    field :value, :string
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(scenario_assumption, attrs) do
    scenario_assumption
    |> cast(attrs, [:scenario_id, :key, :value, :description])
    |> validate_required([:scenario_id, :key, :value, :description])
  end
end
