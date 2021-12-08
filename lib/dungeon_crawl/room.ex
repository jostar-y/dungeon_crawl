defmodule DungeonCrawl.Room do
  @moduledoc false
  alias DungeonCrawl.Room

  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: []

  def all do
    [
      %Room{
        description: "You found a quiet place. Looks safe for a little nap.",
        actions: [forward(), rest(), search(), back()]
      }
    ]
  end
end
