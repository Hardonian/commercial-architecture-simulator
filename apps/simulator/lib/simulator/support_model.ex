defmodule Simulator.SupportModel do
  @moduledoc """
  Represents a support model in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "support_models" do
    field :name, :string
    field :description, :string
    field :level, :string
    field :response_time_sla, :string
    field :cost_per_user_per_month, :decimal

    timestamps()
  end

  @doc false
  def changeset(support_model, attrs) do
    support_model
    |> cast(attrs, [:name, :description, :level, :response_time_sla, :cost_per_user_per_month])
    |> validate_required([:name, :description, :level, :response_time_sla, :cost_per_user_per_month])
  end
end
