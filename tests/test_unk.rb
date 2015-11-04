require "./lib/unk.rb"
require "test/unit"

class TestUnk < Test::Unit::TestCase
  def test_sample
    assert_equal("hello world",Unk.new.hi)
    assert_equal("")
  end

end
