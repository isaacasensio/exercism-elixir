defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    words = sentence |> String.replace(~r/[:,\!\&\@\$\^\%]/u, "")
                     |> String.downcase
                     |> String.replace("_", " ")
                     |> String.split

    Enum.reduce words, %{}, fn word, acc ->
      Map.put(acc, word, Map.get(acc, word, 0) + 1)
    end
    
  end
end
