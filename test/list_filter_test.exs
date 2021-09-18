defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "given an empyt list should return 0" do
      assert ListFilter.call([]) == 0
    end

    test "given the list [0,'1', '3', '6', '43', 'banana', '6', 'abc'] should return 3" do
      assert ListFilter.call([0, "1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end
  end
end
