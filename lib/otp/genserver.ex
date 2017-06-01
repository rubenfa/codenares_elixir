defmodule Codenares.OTP.Calculator do
  use GenServer

  # INTERFACE
  def start_link(current, opts \\ []) do
    GenServer.start_link(__MODULE__, current, opts )
  end

  def add(n) when is_number(n) do
    GenServer.cast(__MODULE__, {:add, n})
  end

  def sub(n) when is_number(n) do
    GenServer.cast(__MODULE__, {:sub, n})
  end

  def mult(n) when is_number(n) do
    GenServer.call(__MODULE__, {:mult, n})
  end

  def div(n) when is_number(n) do
    GenServer.call(__MODULE__, {:div, n})
  end

  def get_current do    
    GenServer.call(__MODULE__, :current)
  end

  def stop do
    GenServer.stop(__MODULE__)
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
end
