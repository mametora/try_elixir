defmodule Chop do
  def guess(actual, min.._, mid) when mid > actual do
    IO.puts("Is it #{mid}")
    max = mid - 1
    guess(actual, min..max, mid(min..max))
  end

  def guess(actual, _..max, mid) when mid < actual do
    IO.puts("Is it #{mid}")
    min = mid + 1
    guess(actual, min..max, mid(min..max))
  end

  def guess(actual, _, mid) when mid == actual do
    IO.puts("Is it #{mid}")
    IO.puts(mid)
  end

  def guess(actual, min..max) when actual > min and actual < max do
    guess(actual, min..max, mid(min..max))
  end

  def mid(min..max), do: min + div(max - min, 2)
end
