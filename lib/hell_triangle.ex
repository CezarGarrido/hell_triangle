defmodule HellTriangle do
  @moduledoc """
  Documentation for HellTriangle.
  """

  @doc """
  Given a triangle of numbers, find the global maximum total from top to bottom.

  ## Examples

      iex> HellTriangle.sum([[6],[3,5],[9,7,1],[4,6,8,4]])
      26

  """
  def sum([head | tail]) do
    sum_list([head | tail], 0, 0)
  end

  def sum_list(list, index, accumulator \\ 0)

  def sum_list([head | tail], index, accumulator) do
    # The first argument is the list/triangle.
    # head is the first element in the list, and tail is a list with the remaining elements.
    # Second argument is list index.
    # Third argument is the accumulator of the sum result.

    n = Enum.count(head)
    a = Enum.at(head, index)
    b = Enum.at(head, index + 1)

    cond do
      n == 1 || a >= b ->
        sum_list(tail, index, accumulator + a)

      true ->
        sum_list(tail, index + 1, accumulator + b)
    end
  end

  def sum_list([], _, accumulator) do
    accumulator
  end
end
