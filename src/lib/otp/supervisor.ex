defmodule Codenares.OTP.Supervisor do
  use Supervisor

  alias Codenares.OTP.Calculator

  def start_link do
    Supervisor.start_link(__MODULE__, [], name: :supervisor)
  end

  def start_calculator(name) do
    Supervisor.start_child(:supervisor, [name])
  end

  def init([]) do
    children = [
      worker(Calculator, [0], [restart: :transient]) #El proceso se reinicia si se para de forma anormal
    ]

    supervise(children, strategy: :simple_one_for_one)
  end

  def start_n_calculators(number) do
     for n <- 1..number, do: start_calculator(String.to_atom("Calc_" <> to_string(n)    ))
  end
end
