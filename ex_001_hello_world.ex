defmodule HelloWorld do
  def greets() do
    name = IO.gets("What is yor name? ")
    IO.puts("Hello #{name}, my friend.")
  end
end
