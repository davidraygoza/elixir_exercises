defmodule FibDynamicProgramming do
  def fib(n) do
    cache = %{0 => 0, 1 => 1}

    cache =
      Enum.reduce(2..n, cache, fn
        i, acc ->
          Map.put(acc, i, acc[i-2] + acc[i-1])
      end)

    cache[n]
  end
end
