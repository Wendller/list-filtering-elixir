defmodule ListFilter do
  def call(list),
    do: Enum.count(remove_not_numbers(list), fn element -> rem(element, 2) > 0 end)

  defp remove_not_numbers(list) do
    only_numbers_list = Enum.filter(list, fn element -> String.match?(element, ~r/[0-9]/) end)
    Enum.map(only_numbers_list, fn element -> String.to_integer(element) end)
  end
end

# Use Enum.filter(fn str -> String.match?(str, ~r/[0-9]+/) end) para retirar os itens não numéricos da lista antes de transformá-los em inteiros. Ao utilizar este filtro, ficarão na lista apenas o que contêm números.
