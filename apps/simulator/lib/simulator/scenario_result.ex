defmodule Simulator.ScenarioResult do
  @moduledoc """
  Represents the result of a scenario analysis in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "scenario_results" do
    belongs_to :scenario, Simulator.Scenario
    field :implementation_effort_score, :decimal
    field :integration_complexity_score, :decimal
    field :support_load_score, :decimal
    field :cost_to_serve, :decimal
    field :projected_gross_margin, :decimal
    field :delivery_risk_score, :decimal
    field :adoption_readiness_score, :decimal
    field :recommended_rollout_option, :string
    field :payback_period_months, :integer
    field :estimated_professional_services_hours, :integer

    timestamps()
  end

  @doc false
  def changeset(scenario_result, attrs) do
    scenario_result
    |> cast(attrs, [:scenario_id, :implementation_effort_score, :integration_complexity_score, :support_load_score, :cost_to_serve, :projected_gross_margin, :delivery_risk_score, :adoption_readiness_score, :recommended_rollout_option, :payback_period_months, :estimated_professional_services_hours])
    |> validate_required([:scenario_id, :implementation_effort_score, :integration_complexity_score, :support_load_score, :cost_to_serve, :projected_gross_margin, :delivery_risk_score, :adoption_readiness_score, :recommended_rollout_option, :payback_period_months, :estimated_professional_services_hours])
  end
end
