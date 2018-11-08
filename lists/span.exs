defmodule MyList do
  def span(from, to), do: Enum.to_list from..to
end

"""
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
iex(6)> MyList.span 1, 10
"""
