defmodule Math do

  # Still working on a proper way to get the stream to stop if the sum of the
  # last two numbers in the sequence is >= 4000000.
  def create_sequence do
    Stream.unfold({1, 2}, fn {x, y} -> {x, {y, x + y}} end)
    |> Enum.take(32)
  end

  def even_numbers_only do
    Enum.filter(create_sequence, &even?/1)
  end

  def even?(x) do
    rem(x, 2) == 0
  end

  def perform do
    even_numbers_only
    |> Enum.sum
  end

end
