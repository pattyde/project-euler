# three? = &(rem(&1, 3) == 0)
# five? = &(rem(&1, 5) == 0)
#
#
# IO.puts Enum.filter(1..999, three?) ++ Enum.filter(1..999, five?) |> Enum.sort |> Enum.dedup |> Enum.sum


defmodule Math do

  defp three?(x) do
    rem(x, 3) == 0
  end

  defp five?(x) do
    rem(x, 5) == 0
  end

  def perform(num) do
    Enum.filter(1..(num-1), &three?/1)
    ++ Enum.filter(1..(num-1), &five?/1)
    |> Enum.sort
    |> Enum.dedup
    |> Enum.sum
  end

end
