defmodule Simulator.RolloutPhase do
  @moduledoc """
  Represents a rollout phase in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "rollout_phases" do
    belongs_to :scenario, Simulator.Scenario
    field :name, :string
    field :description, :string
    field :start_week, :integer
    field :end_week, :integer
    field :target_customer_count, :integer
    field :risk_level, :string
    field :support_level, :string

    timestamps()
  end

  @doc false
  def changeset(rollout_phase, attrs) do
    rollout_phase
    |> cast(attrs, [:scenario_id, :name, :description, :start_week, :end_week, :target_customer_count, :risk_level, :support_level])
    |> validate_required([:scenario_id, :name, :description, :start_week, :end_week, :target_customer_count, :risk_level, :support_level])
  end
end
