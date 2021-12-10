defmodule DungeonCrawl.Room.Triggers.Exit do
  @moduledoc false
  @behaviour DungeonCrawl.Room.Trigger
  def run(character, _) do
    {character, :exit}
  end
end
