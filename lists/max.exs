defmodule MyList do
  def max([ head | [] ]),   do: head
  def max([ head | tail ]), do: head + sum(tail)
end
