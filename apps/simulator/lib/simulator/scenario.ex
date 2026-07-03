defmodule Simulator.Scenario do
  @moduledoc """
  Represents a scenario in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "scenarios" do
    field :name, :string
    field :description, :string
    belongs_to :customer_segment, Simulator.CustomerSegment
    belongs_to :solution_option, Simulator.SolutionOption
    field :number_of_customers, :integer
    field :number_of_institutions, :integer
    field :users_per_account, :integer
    field :integration_count, :integer
    field :identity_complexity, :integer
    field :data_migration_complexity, :integer
    field :support_tier, :string
    field :implementation_team_size, :integer
    field :delivery_timeline_weeks, :integer
    field :average_contract_value, :decimal
    field :gross_margin_target, :decimal
    field :infrastructure_cost_estimate, :decimal
    field :support_cost_estimate, :decimal
    field :professional_services_effort, :decimal
    field :risk_tolerance, :integer

    timestamps()
  end

  @doc false
  def changeset(scenario, attrs) do
    scenario
    |> cast(attrs, [:name, :description, :customer_segment_id, :solution_option_id, :number_of_customers, :number_of_institutions, :users_per_account, :integration_count, :identity_complexity, :data_migration_complexity, :support_tier, :implementation_team_size, :delivery_timeline_weeks, :average_contract_value, :gross_margin_target, :infrastructure_cost_estimate, :support_cost_estimate, :professional_services_effort, :risk_tolerance])
    |> validate_required([:name, :description, :customer_segment_id, :solution_option_id, :number_of_customers, :number_of_institutions, :users_per_account, :integration_count, :identity_complexity, :data_migration_complexity, :support_tier, :implementation_team_size, :delivery_timeline_weeks, :average_contract_value, :gross_margin_target, :infrastructure_cost_estimate, :support_cost_estimate, :professional_services_effort, :risk_tolerance])
  end
end
