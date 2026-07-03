defmodule Simulator.ImplementationWorkstream do
  @moduledoc """
  Represents an implementation workstream in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "implementation_workstreams" do
    field :name, :string
    field :description, :string
    field :estimated_effort_hours, :integer
    field :required_skills, :string
    field :dependencies, :string

    timestamps()
  end

  @doc false
  def changeset(implementation_workstream, attrs) do
    implementation_workstream
    |> cast(attrs, [:name, :description, :estimated_effort_hours, :required_skills, :dependencies])
    |> validate_required([:name, :description, :estimated_effort_hours, :required_skills, :dependencies])
  end
end
