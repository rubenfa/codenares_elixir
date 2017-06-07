defmodule FizzBuzzSinPatternTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest FizzBuzzSinPattern

  test "Un número es múltiplo de 3 escribimos Fizz, múltiplo de 5 Buzz y de los dos FizzBuzz. En cualquier otro caso escribimos el número " do
    test_case([1], "1\n")
    test_case([1,2], "1\n2\n")
    test_case([1,2,3], "1\n2\nFizz\n")
    test_case([1,2,3,4], "1\n2\nFizz\n4\n")
    test_case(1..5, "1\n2\nFizz\n4\nBuzz\n")
    test_case(1..15, "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n" )
  end

  defp test_case(numbers, expected) do
    start_fun = fn -> assert FizzBuzzSinPattern.start(numbers) == :ok end

    assert capture_io(start_fun) == expected
  end 

end
