defmodule Bob do
  def hey(input) do
    cond do
        String.strip(input) == "" -> "Fine. Be that way!" #silence
        String.match?(input, ~r/^[0-9, ]*$/) -> "Whatever." #only numbers
        String.ends_with?(input, "?") -> "Sure." #questions
        String.upcase(input) == input -> "Whoa, chill out!" #shouting
        true -> "Whatever." 
    end
  end
end
