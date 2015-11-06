require "./lib/unk.rb"
require "test/unit"

class TestUnk < Test::Unit::TestCase
  def test_sample
    assert_equal("hello world",Unk.hi)
    assert_equal(nil, Unk.find("https://www.google.com"))
    assert_equal(true, Unk.files)

  end



end
