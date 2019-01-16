defmodule MyList do
  defp span(from, to, list) when from > to,  do: span(from - 1, to, list ++ [from])
  defp span(from, to, list) when from < to,  do: span(from + 1, to, list ++ [from])
  defp span(from, to, list) when from == to, do: list ++ [from]

  def span(from, to), do: span(from, to, [])

  defp _multiple(n, to, i, list) when to < n * i, do: list

  defp _multiple(n, to, i, list) do
    _multiple(n, to, i + 1, list ++ [n * i])
  end

  def multiple(n, to), do: _multiple(n, to, 1, [])
end
