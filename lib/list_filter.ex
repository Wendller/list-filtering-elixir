defmodule ListFilter do
  def call(list) do
    list
    |> Enum.filter(fn element -> String.match?(element, ~r/[0-9]/) end)
    |> Enum.map(fn element -> String.to_integer(element) end)
    |> Enum.count(fn element -> rem(element, 2) > 0 end)
  end
end
