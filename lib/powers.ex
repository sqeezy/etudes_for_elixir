defmodule Powers do
  import Kernel, except: [raise: 2]

  def raise(_, 0), do: 1
  def raise(x, 1), do: x

  def raise(x, n) when n > 0 do
    raise(x, n, 1)
  end

  def raise(x, n) when n < 0 do
    1 / raise(x, -n)
  end

  defp raise(_, 0, acc) do
    acc
  end

  defp raise(x, n, acc) do
    raise(x, n - 1, x * acc)
  end
end