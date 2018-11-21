defmodule MyList do
  defp span(from, to, list) when from > to,  do: span(from - 1, to, list ++ [from])
  defp span(from, to, list) when from < to,  do: span(from + 1, to, list ++ [from])
  defp span(from, to, list) when from == to, do: list ++ [from]

  def span(from, to), do: span(from, to, [])
end
