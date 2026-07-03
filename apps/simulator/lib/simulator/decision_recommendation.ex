defmodule Simulator.DecisionRecommendation do
  @moduledoc """
  Represents a decision recommendation for a scenario in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "decision_recommendations" do
    belongs_to :scenario, Simulator.Scenario
    field :recommended_rollout_strategy, :string
    field :rationale, :text
    field :expected_roi, :decimal
    field :risk_mitigation_plan, :text

    timestamps()
  end

  @doc false
  def changeset(decision_recommendation, attrs) do
    decision_recommendation
    |> cast(attrs, [:scenario_id, :recommended_rollout_strategy, :rationale, :expected_roi, :risk_mitigation_plan])
    |> validate_required([:scenario_id, :recommended_rollout_strategy, :rationale, :expected_roi, :risk_mitigation_plan])
  end
end
