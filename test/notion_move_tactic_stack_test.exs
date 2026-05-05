defmodule NotionMoveTacticStackTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 89, capacity: 79, latency: 11, risk: 12, weight: 5}
    assert NotionMoveTacticStack.score(signal_case_1) == 201
    assert NotionMoveTacticStack.classify(signal_case_1) == "accept"
    signal_case_2 = %{demand: 62, capacity: 93, latency: 18, risk: 8, weight: 12}
    assert NotionMoveTacticStack.score(signal_case_2) == 191
    assert NotionMoveTacticStack.classify(signal_case_2) == "accept"
    signal_case_3 = %{demand: 75, capacity: 102, latency: 24, risk: 24, weight: 9}
    assert NotionMoveTacticStack.score(signal_case_3) == 129
    assert NotionMoveTacticStack.classify(signal_case_3) == "review"
  end
end
