defmodule Codenares.OTP.Supervisor do
  use Supervisor

  alias Codenares.OTP.Calculator

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [
      worker(Calculator, [0], restart: :temporary, id: :p0),
      worker(Calculator, [0], restart: :temporary, id: :p1),
      worker(Calculator, [0], restart: :temporary, id: :p2),
      worker(Calculator, [0], restart: :temporary, id: :p3)
    ]

    supervise(children, strategy: :simple_one_for_one)
  end
end
