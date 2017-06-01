defmodule Codenares.PatternMatching.Player do

  defstruct name: "", level: 1, type: :warrior, health: 100, alive: true

  alias MyModules.PatternMatching.Player

  def attack(%Player{alive: false}, _, _ ) do
    {:error, "A dead player cannot attack"}
  end

  def attack(_,  %Player{alive: false}, _ ) do
    {:error, "A player cannot attack a dead player"}
  end

  def attack(p1 = %Player{type: :warrior}, p2 = %Player{type: :wizard}, damage) do
    update_health(p2, damage*2)
  end

  def attack(_, p2 = %Player{}, damage) do
    update_health(p2, damage)
  end

  defp update_health(p = %Player{health: h}, damage) when h <= damage do
    %{p | health: 0, alive: false}
  end

  defp update_health(p = %Player{health: h}, damage)  do
    %{p | health: (p.health - damage)}
  end


end
