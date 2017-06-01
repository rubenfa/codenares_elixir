defmodule Codenares.OTP.NumberServer do
  use GenServer

  # INTERFACE
  def start_link(current_number) do
    GenServer.start_link(__MODULE__, current_number, name: __MODULE__)
  end

  def next_number do
   GenServer.call(__MODULE__, :next_number)
  end

  def increment_number(increment) do
    GenServer.cast(__MODULE__, {:increment_number, increment})
  end

  def status do
    GenServer.call(__MODULE__, :status)
  end

  # IMPLEMENTACIÓN GenServer
  def handle_call(:next_number, _from, current_number) do
    {:reply, current_number, current_number + 1}
  end

  def handle_call(:status, _from, current_number) do
    {:reply, current_number, current_number}
  end

  def handle_cast({:increment_number, increment}, current_number) do
    {:noreply, current_number + increment}
  end

  def format_status(_reason, [ _pdict, state ]) do
    [data: [{'State', "My current state is '#{inspect state}', and I'm happy"}]]
  end
end
