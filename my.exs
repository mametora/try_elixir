defmodule MyList do
  def sum([ head | [] ]),   do: head
  def sum([ head | tail ]), do: head + sum(tail)

  def mapsum([ head | [] ], func), do: func.(head)
  def mapsum([ head | tail ], func), do: func.(head) + mapsum(tail, func)
end
