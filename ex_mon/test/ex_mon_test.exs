defmodule ExMonTest do
  use ExUnit.Case

  alias ExMon.Player

  describe "create_player/4" do
    test "returns a player" do

      expected_response = %Player{life: 100, moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute}, name: "Rafael"}

      assert expected_response == ExMon.create_player("Rafael", :chute, :soco, :cura)
    end
  end
end
