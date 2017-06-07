defmodule Codenares.PatternMatching.HelloWorld do

  def hello(selection) do   
    get_message(selection)
  end

  defp get_message(s) when s == 0, do: IO.puts("Hello world")
  defp get_message(s) when s == 1, do: IO.puts("Hello Codenares")
  defp get_message(s) when s == 2, do: IO.puts("Hello Torrejón")
  defp get_message(s), do: {:error, "Message not found"} 

end
