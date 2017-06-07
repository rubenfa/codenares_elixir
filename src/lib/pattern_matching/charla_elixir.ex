defmodule Codenares.PatternMatch.FizzBuzzSinPattern do

  def start(numbers) do
    Enum.each(numbers, fn(x) -> check(x) end)
  end

  defp check(number) do
    cond do
      rem(number, 15) == 0 -> IO.puts("FizzBuzz")
      rem(number, 3) == 0 -> IO.puts("Fizz")
      rem(number, 5) == 0 -> IO.puts("Buzz")
      true -> IO.puts("#{number}")
    end
  end

end

