defmodule ExMon.Player do
  @required_keys [:life, :name, :move_rnd, :move_avg, :move_heal]
  @enforce_keys @required_keys

  @max_life 100

  defstruct @required_keys

  def build(name, move_rnd, move_avg, move_heal) do
    %ExMon.Player{
      name: name,
      move_rnd: move_rnd,
      move_avg: move_avg,
      move_heal: move_heal,
      life: @max_life
    }
  end
end
