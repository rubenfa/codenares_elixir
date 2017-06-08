defmodule Codenares.Pipe.CustomPipeOperator do

  def persistence(n, count \\ 0) when length(n) == 1 do
    count
  end

  def persistence(n, count \\ 0) do
    n
    |> Enum.reduce(1, fn(x, acc) -> x * acc end)
    |> Integer.digits
    |> persistence(count + 1)
  end
end
  
 
