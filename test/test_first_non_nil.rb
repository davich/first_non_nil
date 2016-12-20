require 'minitest/autorun'
require 'first_non_nil'

class FirstNonNilTest < Minitest::Test
  def test_array
    assert_equal 'third', [nil, nil, 'third', 'fourth'].first_non_nil
  end

  def test_block
    assert_equal "yes-4",
      [1,2,3,4,5].first_non_nil {|i| "yes-#{i}" if i > 3}
  end
end
