defmodule NotionMoveTacticStack.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 78, slack: 49, drag: 30, confidence: 91}
    assert NotionMoveTacticStack.DomainReview.score(item) == 206
    assert NotionMoveTacticStack.DomainReview.lane(item) == "ship"
  end
end
