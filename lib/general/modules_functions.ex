defmodule Codenares.General.HelloWorld do

  def hello(selection) do   
    get_message(selection)
  end

  defp get_message(s) do
    cond do
      s == 0 -> IO.puts("Hello world")
      s == 1 -> IO.puts("Hello Codenares")
      s == 2 -> IO.puts("Hello Torrejon")
      true -> {:error, "Message not found"}
    end
  end
end
