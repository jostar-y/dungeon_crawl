defmodule DungeonCrawl.Cli.Main do
  @moduledoc false
  alias Mix.Shell.IO, as: Shell

  def start_game do
    welcome_message()
    Shell.prompt("Press Enter to continue")
    hero_choice()
    crawl(DungeonCrawl.Room.all)
  end

  defp welcome_message do
    Shell.info("=== Dungeon Crawl ===" )
    Shell.info("You awake in a dungeon full of monsters.")
    Shell.info("You need to survive and find the exit")
  end

  defp hero_choice do
    DungeonCrawl.Cli.HeroChoice.start()
  end

  defp crawl(rooms) do
    Shell.info("You keep moving forward to the next room.")
    Shell.prompt("Press Enter to continue")

    rooms
    |>Enum.random
    |> DungeonCrawl.Cli.RoomActionsChoice.start
  end

end
