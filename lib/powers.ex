defmodule Powers do
  import Kernel, except: [raise: 2]

  def raise(_, 0), do: 1
  def raise(x, 1), do: x
  def raise(x, n) when n > 0, do: raise(x, n, 1)
  def raise(x, n) when n < 0, do: 1 / raise(x, -n)
  defp raise(_, 0, acc), do: acc
  defp raise(x, n, acc), do: raise(x, n - 1, x * acc)

  def nth_root(x, n), do: nth_root(x, n, x / 2.0)
  defp nth_root(x, n, approx) do
    f = raise(approx, n) - x
    f_prime = n * raise(approx, n - 1)
    next = approx - f / f_prime
    change = abs(next - approx)

    if change < 1.0e-8 do
      next
    else
      nth_root(x, n, next)
    end
  end
end