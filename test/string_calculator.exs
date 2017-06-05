defmodule Codenares.Testing.StringCalculatorTests do
  use ExUnit.Case

  doctest Codenares.Testing.StringCalculator

  alias Codenares.Testing.StringCalculator

  test "Si se recibe un string vacío la suma es cero" do
   assert StringCalculator.add("") == 0
  end

  test "Si no se recibe ningún valor la suma es cero" do
    assert StringCalculator.add() == 0
  end

  test "Si se recibe solo un valor, pero no es un número, la suma es cero" do
    assert StringCalculator.add("a") == 0
  end

  test "Si se recibe un solo valor, y es un número, la suma es el valor del número" do
    assert StringCalculator.add("2") == 2
    assert StringCalculator.add("3") == 3
    assert StringCalculator.add("10,4") == 14
    assert StringCalculator.add("50,50") == 100
  end

  test "Si se reciben dos valores, y uno no es un número, la suma es la del valor entero" do
    assert StringCalculator.add("2,a") == 2
    assert StringCalculator.add("a,2") == 2
    assert StringCalculator.add("aa") == 0
  end

  test "Si se reciben dos valores y los dos son números, el resultado es la suma" do
    assert StringCalculator.add("2,2") == 4
    assert StringCalculator.add("2,3") == 5
    assert StringCalculator.add("6,6") == 12
    assert StringCalculator.add("16,4") == 20
    assert StringCalculator.add("1000,0") == 1000

  end



end
