defmodule Mix.Tasks.Start do
  @moduledoc false
  use Mix.Task

  def run(_) do
    DungeonCrawl.Cli.Main.start_game
  end
end
