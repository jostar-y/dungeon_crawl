defmodule DungeonCrawl.Cli.BaseCommands do
  @moduledoc false
  alias Mix.Shell.IO, as: Shell

  def display_options(options) do
    options
    |> Enum.with_index(1)
    |> Enum.each(fn {option, index} ->
      Shell.info("#{index} - #{option}")
    end)

    options
  end

  def generate_question(options) do
    options = Enum.join(1..Enum.count(options), ",")
    "Which one? [#{options}]\n"
  end

  def parse_answer(answer) do
    {option, _} = Integer.parse(answer)
    option - 1
  end

  def with_case do
    with :aa <- :aa ,
    :b <- :bb do
      IO.puts("with is good")
    else
      :bb ->IO.puts("with is error")
    end
  end

end
