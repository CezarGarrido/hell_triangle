defmodule HellTriangleTest do
  use ExUnit.Case
  doctest HellTriangle

  test "base", do: assert HellTriangle.sum([[1]]) == 1

  test "2 rows", do: assert HellTriangle.sum([[1], [1, 1]]) == 2

  test "2 rows, with a twist", do: assert HellTriangle.sum([[1], [2, 1]]) == 3

  test "3 rows, with max sum path different from previous", do: assert HellTriangle.sum([[1], [2, 1], [1, 1, 10]]) == 12

  test "test example", do: assert HellTriangle.sum([[6],[3,5],[9,7,1],[4,6,8,4]]) == 26
end
