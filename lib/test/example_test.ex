defmodule Codenares.Testing.ExampleDocTest do

  @doc ~S"""
  Suma dos números enteros

  ## Examples

  iex> Codenares.Testing.ExampleDocTest.sum(3,4)
  7

  iex> Codenares.Testing.ExampleDocTest.sum(5,5)
  10

  """

  def sum(x,y) do
    x + y + 1
  end
end
