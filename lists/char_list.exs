defmodule MyList do
  def char_list?([ digit | [] ]), do: _char?(digit)
  def char_list?([ digit | tail ]) do
    if _char?(digit) do
      char_list?(tail)
    else
      false
    end
  end

  defp _char?(digit), do: digit - ?\s >= 0 && digit - ?~ <= 0
end

IO.puts(MyList.char_list?('str'))
IO.puts(MyList.char_list?([67, 65, 84, 0]))
