defmodule ListFilter do
  def call(list) do
    list |> remove_not_numbers() |> string_to_integer() |> count_odd_numbers()
  end

  def remove_not_numbers(list),
    do: Enum.filter(list, fn element -> String.match?(element, ~r/[0-9]/) end)

  def string_to_integer(list),
    do: Enum.map(list, fn element -> String.to_integer(element) end)

  def count_odd_numbers(list),
    do: Enum.count(list, fn element -> rem(element, 2) > 0 end)
end
