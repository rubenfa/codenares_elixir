defmodule PlayerTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest MyModules.PatternMatching.Player


  alias MyModules.PatternMatching.Player

  test "Solo puede atacar un jugador que esté vivo" do
    attacker = %Player{ name: "P1", alive: false}
    defender = %Player{ name: "P2"}

    assert Player.attack(attacker, defender, 10) == {:error, "A dead player cannot attack"}
  end

  test "Solo se puede atacar a un jugador que esté vivo" do
    attacker = %Player{ name: "P1"}
    defender = %Player{ name: "P2", alive: false}

    assert Player.attack(attacker, defender, 10) == {:error, "A player cannot attack a dead player"}
  end

  test "Si un jugador vivo ataca a otro le resta el daño a la vida" do
    attacker = %Player{ name: "P1"}
    defender = %Player{ name: "P2"}

    assert Player.attack(attacker, defender, 10) == %Player {name: "P2", health: 90 }
  end


  test "Si un jugador vivo ataca a otro y el golpe es igual a la vida que le queda, muere" do
    attacker = %Player{ name: "P1"}
    defender = %Player{ name: "P2"}

    assert Player.attack(attacker, defender, 100) == %Player {name: "P2", health: 0, alive: false }
  end

  test "Si un jugador vivo ataca a otro y el golpe es mayor a la vida que le queda, muere" do
    attacker = %Player{ name: "P1"}
    defender = %Player{ name: "P2"}

    assert Player.attack(attacker, defender, 130) == %Player {name: "P2", health: 0, alive: false }
  end

  test "Si un guerrero ataca a un mago, le hace el doble de daño" do
    attacker = %Player{ name: "P1", type: :warrior}
    defender = %Player{ name: "P2", type: :wizard} 

    assert Player.attack(attacker, defender, 10) == %Player{name: "P2", health: 80, alive: true, type: :wizard}
  end

 end
