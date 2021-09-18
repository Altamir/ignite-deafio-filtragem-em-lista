defmodule ListFilter do
  require Integer

  def call(list) do
    filter(list)
  end

  defp filter([]), do: 0

  defp filter(list) do
    Enum.count(list, fn it -> verificaSeConta(it) end)
  end

  defp verificaSeConta(item) when is_integer(item), do: handlerParser({item, 0})

  defp verificaSeConta(item) do
    Integer.parse(item)
    |> handlerParser
  end

  defp handlerParser({val, _}) when Integer.is_odd(val), do: true
  defp handlerParser({val, _}) when Integer.is_even(val), do: false
  defp handlerParser(:error), do: false
end
