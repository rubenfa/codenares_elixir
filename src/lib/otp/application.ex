defmodule Codenares.OTP.Application do
  use Application

  def start(_type, []) do
    Codenares.OTP.Supervisor.start_link()
  end
end
