defmodule Codenares.OTP.Calculator do
  use GenServer

  # INTERFACE
  def start_link(current, name) do
    GenServer.start_link(__MODULE__, current, name: name )
  end

  def add(p_name, n) when is_number(n) do
    GenServer.cast(p_name, {:add, n})
  end

  def sub(p_name, n) when is_number(n) do
    GenServer.cast(p_name, {:sub, n})
  end

  def mult(p_name, n) when is_number(n) do
    GenServer.call(p_name, {:mult, n})
  end

  def div(p_name, n) when is_number(n) do
    GenServer.call(p_name, {:div, n})
  end

  def get_current(p_name) do    
    GenServer.call(p_name, :current)
  end

  def stop do
    GenServer.stop(:calculator)
  end

  # IMPLEMENTACIÓN GenServer

  def handle_call(:current, _from, current) do
    {:reply, current, current}
  end

  def handle_call({:div, n}, _from, current) do
    {:reply, current / n, current / n}
  end

  def handle_call({:mult, n}, _from, current) do
    {:reply, current * n, current * n}
  end

  def handle_cast({:add, n}, current) do
    {:noreply, current + n }
  end

  def handle_cast({:sub, n}, current) do
    {:noreply, current - n }
  end

  def terminate(reason, _status) do
    IO.puts "Stop because #{inspect reason}"
    :ok 
  end 
end
