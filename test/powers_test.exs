defmodule PowersTest do
  use ExUnit.Case

  test "raise works" do
    assert Powers.raise(2, 2) == 4
    assert Powers.raise(2, 3) == 8
    assert Powers.raise(10, 2) == 100
    assert Powers.raise(12345, 0) == 1
    assert Powers.raise(12345, 1) == 12345
  end

  test "root works" do
    assert Powers.nth_root(9,2) == 2
  end
end