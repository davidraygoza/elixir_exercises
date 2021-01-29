filename = IO.gets("File to count the words from: ") |> String.trim()

words =
  File.read!(filename)
  |> String.split(~r{(\\n|[^\w'])+})
  |> Enum.filter(fn x -> x != "" end)

lines =
  File.read!(filename)
  |> String.split(~r{(\\n|[^\n'])+})
  |> Enum.filter(fn x -> x != "" end)

characters =
    File.read!(filename)
    |> String.replace(["\n", " "], "")
    |> String.length()


IO.puts("Words:")
words |> Enum.count() |> IO.puts()
IO.puts("Characters")
IO.inspect(characters)

IO.puts("Lines:")
lines |> Enum.count() |> IO.puts()
