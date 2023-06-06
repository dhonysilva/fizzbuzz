defmodule ExMonTest do
  use ExUnit.Case

  import ExUnit.CaptureIO
  alias ExMon.Player

  describe "create_player/4" do
    test "returns a player" do

      expected_response = %Player{life: 100, moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute}, name: "Rafael"}

      assert expected_response == ExMon.create_player("Rafael", :chute, :soco, :cura)
    end
  end

  describe "start_game/1" do
    test "when the game is started, returns a message" do
      player = Player.build("Rafael", :chute, :soco, :cura)

      messages =
        capture_io(fn ->
          assert ExMon.start_game(player) == :ok
        end)

        assert messages =~ "The game has started!"
    end
  end
end
