defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "Remove all words from list and return the number of odd numbers" do
      list1 = ["1", "2", "3", "abc", "wendy"]
      list2 = ["foo", "bar"]
      list3 = ["1", "3", "6", "43", "banana", "6", "abc"]

      assert ListFilter.call(list1) == 2
      assert ListFilter.call(list2) == 0
      assert ListFilter.call(list3) == 3
    end

    test "passing an empty list" do
      assert ListFilter.call([]) == 0
    end
  end
end
