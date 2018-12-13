defmodule MyEnum do
  def all?([ head | [] ], func), do: func.(head)

  def all?([ head | tail ], func) do
    if all?(tail, func) do
      func.(head)
    else
      false
    end
  end
end
