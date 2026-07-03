defmodule Simulator.SolutionOption do
  @moduledoc """
  Represents a solution option in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "solution_options" do
    field :name, :string
    field :description, :string
    field :category, :string
    field :average_contract_value, :decimal
    field :implementation_complexity, :integer
    field :support_requirement, :string

    timestamps()
  end

  @doc false
  def changeset(solution_option, attrs) do
    solution_option
    |> cast(attrs, [:name, :description, :category, :average_contract_value, :implementation_complexity, :support_requirement])
    |> validate_required([:name, :description, :category, :average_contract_value, :implementation_complexity, :support_requirement])
  end
end
