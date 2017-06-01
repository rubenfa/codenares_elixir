defmodule Codenares.Pipe.PipeOperator do

@doc """
Función que coge un número entero, extrae sus dígitos, filtra los dígitos pares, los multiplica por 3, los da la vuelta y devuelve un string con el resultado

Ejemplo:

MyModules.Pipe.PipeOperator.pipe(123456)
"18126"

"""

require Integer

  def no_pipe(n) when is_integer(n) do
    Enum.join(Enum.reverse(Enum.map(Enum.filter(Integer.digits(n), fn(x) -> Integer.is_even(x) end , fn(x) -> x * 3 end))))
  end

  def no_pipe2(n) when is_integer(n) do
    digits = Integer.digits(n)
    filtered = Enum.filter(fn(x)-> Integer.is_even(x) end )
    digitsX = Enum.map(filtered, fn(x) -> x * 3  end)
    reversed = Enum.reverse(digitsX)
    s = Enum.join(reversed)
    Integer.parse(s)
  end

  def pipe(n) when is_integer(n) do
    n
    |> Integer.digits
    |> Enum.filter(fn(x) -> Integer.is_even(x) end)
    |> Enum.map(fn(x)-> x * 3 end)
    |> Enum.reverse
    |> Enum.join
  end

end
