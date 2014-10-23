require "minitest/autorun"
require "minitest/pride"

class TestSomething < Minitest::Test

  def test_something
    assert_equal 3, MyCalc.new.plus_one(2)
  end
end

class MyCalc
  def plus_one(num)
    num + 1
  end
end