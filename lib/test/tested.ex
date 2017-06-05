defmodule Codenares.Testing.StringCalculator do

  def add("") do
    0
  end

  def add() do
    0
  end

  def add(s)  do
    s
    |> String.split(",")
    |> Enum.map(fn(x) -> parse(x) end)
    |> Enum.sum
  end

  def add(s)  do
    0
  end

  defp parse(n) do
    case Integer.parse(n) do
      :error -> 0
      {n, _} -> n
    end
  end
end
