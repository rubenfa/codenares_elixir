defmodule Codenares.PatternMatching.Tuples do

  def calculate({:sum, x, y}), do:  x + y
  def calculate({:res, x, y}), do: x - y
  def calculate({:mul, x, y}), do: x * y
  def calculate({:div, x, y}), do: x / y
  def calculate(other), do: {:error, "Operation not valid"}

end
