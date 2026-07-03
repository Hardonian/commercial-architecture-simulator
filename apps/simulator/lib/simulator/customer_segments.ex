defmodule Simulator.CustomerSegments do
  @moduledoc """
  The CustomerSegments context.
  """

  import Ecto.Query, warn: false
  alias Simulator.Repo
  alias Simulator.CustomerSegment

  @doc """
  Returns the list of customer_segments.

  ## Examples

      iex> list_customer_segments()
      [%CustomerSegment{}, ...]

  """
  def list_customer_segments do
    Repo.all(CustomerSegment)
  end

  @doc """
  Gets a single customer_segment.

  Raises `Ecto.NoResultsError` if the CustomerSegment does not exist.

  ## Examples

      iex> get_customer_segment!(123)
      %CustomerSegment{}

      iex> get_customer_segment!(456)
      ** (Ecto.NoResultsError)

  """
  def get_customer_segment!(id), do: Repo.get!(CustomerSegment, id)

  @doc """
  Creates a customer_segment.

  ## Examples

      iex> create_customer_segment(%{field: value})
      {:ok, %CustomerSegment{}}

      iex> create_customer_segment(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_customer_segment(attrs \\ %{}) do
    %CustomerSegment{}
    |> CustomerSegment.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a customer_segment.

  ## Examples

      iex> update_customer_segment(customer_segment, %{field: new_value})
      {:ok, %CustomerSegment{}}

      iex> update_customer_segment(customer_segment, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_customer_segment(%CustomerSegment{} = customer_segment, attrs) do
    customer_segment
    |> CustomerSegment.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a customer_segment.

  ## Examples

      iex> delete_customer_segment(customer_segment)
      {:ok, %CustomerSegment{}}

      iex> delete_customer_segment(customer_segment)
      {:error, %Ecto.Changeset{}}

  """
  def delete_customer_segment(%CustomerSegment{} = customer_segment) do
    Repo.delete(customer_segment)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking customer_segment changes.

  ## Examples

      iex> change_customer_segment(customer_segment)
      %Ecto.Changeset{data: %CustomerSegment{}}

  """
  def change_customer_segment(%CustomerSegment{} = customer_segment, attrs \\ %{}) do
    CustomerSegment.changeset(customer_segment, attrs)
  end
end
