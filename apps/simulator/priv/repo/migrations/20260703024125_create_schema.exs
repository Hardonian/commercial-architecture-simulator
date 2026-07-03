defmodule Simulator.Repo.Migrations.CreateSchema do
  use Ecto.Migration

  def change do
    create table(:customer_segments) do
      add :name, :string, null: false
      add :description, :string
      add :industry, :string
      add :size, :string
      add :budget_range, :string

      timestamps()
    end

    create table(:solution_options) do
      add :name, :string, null: false
      add :description, :string
      add :category, :string
      add :average_contract_value, :decimal
      add :implementation_complexity, :integer
      add :support_requirement, :string

      timestamps()
    end

    create table(:integration_requirements) do
      add :name, :string, null: false
      add :description, :string
      add :complexity_score, :integer
      add :estimated_effort_hours, :integer

      timestamps()
    end

    create table(:implementation_workstreams) do
      add :name, :string, null: false
      add :description, :string
      add :estimated_effort_hours, :integer
      add :required_skills, :string
      add :dependencies, :string

      timestamps()
    end

    create table(:support_models) do
      add :name, :string, null: false
      add :description, :string
      add :level, :string
      add :response_time_sla, :string
      add :cost_per_user_per_month, :decimal

      timestamps()
    end

    create table(:risk_factors) do
      add :name, :string, null: false
      add :description, :string
      add :category, :string
      add :impact, :integer
      add :likelihood, :integer

      timestamps()
    end

    create table(:scenarios) do
      add :name, :string, null: false
      add :description, :string
      add :customer_segment_id, references(:customer_segments, on_delete: :delete_all)
      add :solution_option_id, references(:solution_options, on_delete: :delete_all)
      add :number_of_customers, :integer
      add :number_of_institutions, :integer
      add :users_per_account, :integer
      add :integration_count, :integer
      add :identity_complexity, :integer
      add :data_migration_complexity, :integer
      add :support_tier, :string
      add :implementation_team_size, :integer
      add :delivery_timeline_weeks, :integer
      add :average_contract_value, :decimal
      add :gross_margin_target, :decimal
      add :infrastructure_cost_estimate, :decimal
      add :support_cost_estimate, :decimal
      add :professional_services_effort, :decimal
      add :risk_tolerance, :integer

      timestamps()
    end

    create table(:scenario_assumptions) do
      add :scenario_id, references(:scenarios, on_delete: :delete_all)
      add :key, :string, null: false
      add :value, :string
      add :description, :string

      timestamps()
    end

    create table(:scenario_results) do
      add :scenario_id, references(:scenarios, on_delete: :delete_all)
      add :implementation_effort_score, :decimal
      add :integration_complexity_score, :decimal
      add :support_load_score, :decimal
      add :cost_to_serve, :decimal
      add :projected_gross_margin, :decimal
      add :delivery_risk_score, :decimal
      add :adoption_readiness_score, :decimal
      add :recommended_rollout_option, :string
      add :payback_period_months, :integer
      add :estimated_professional_services_hours, :integer

      timestamps()
    end

    create table(:rollout_phases) do
      add :scenario_id, references(:scenarios, on_delete: :delete_all)
      add :name, :string, null: false
      add :description, :string
      add :start_week, :integer
      add :end_week, :integer
      add :target_customer_count, :integer
      add :risk_level, :string
      add :support_level, :string

      timestamps()
    end

    create table(:decision_recommendations) do
      add :scenario_id, references(:scenarios, on_delete: :delete_all)
      add :recommended_rollout_strategy, :string
      add :rationale, :string
      add :expected_roi, :decimal
      add :risk_mitigation_plan, :string

      timestamps()
    end

    create index(:scenarios, [:customer_segment_id])
    create index(:scenarios, [:solution_option_id])
    create index(:scenario_assumptions, [:scenario_id])
    create index(:scenario_results, [:scenario_id])
    create index(:rollout_phases, [:scenario_id])
    create index(:decision_recommendations, [:scenario_id])
  end
end
