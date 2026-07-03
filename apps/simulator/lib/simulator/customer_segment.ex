defmodule Simulator.CustomerSegment do
  @moduledoc """
  Represents a customer segment in the commercial architecture simulator.
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "customer_segments" do
    field :name, :string
    field :description, :string
    field :industry, :string
    field :size, :string
    field :budget_range, :string

    timestamps()
  end

  @doc false
  def changeset(customer_segment, attrs) do
    customer_segment
    |> cast(attrs, [:name, :description, :industry, :size, :budget_range])
    |> validate_required([:name, :description, :industry, :size, :budget_range])
  end
end
