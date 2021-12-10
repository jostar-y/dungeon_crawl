defmodule DungeonCrawl.Room.Action do
  @moduledoc false
  alias DungeonCrawl.Room.Action

  @type t :: %Action{id: atom, label: String.t}
  defstruct label: nil,
            id: nil

  def forward, do: %Action{id: :forward, label: "Move forward."}
  def rest, do: %Action{id: :rest, label: "Take a better look and rest."}
  def search, do: %Action{id: :search, label: "Search the room."}

  def back, do: %Action{id: :back, label: "Move back."}

  defimpl String.Chars do
    def to_string(action), do: action.label
  end
end
