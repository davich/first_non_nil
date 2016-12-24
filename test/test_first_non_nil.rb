require 'minitest/autorun'
require 'first_non_nil'

class FirstNonNilTest < Minitest::Test
  def test_array
    assert_equal 'third', [nil, nil, 'third', 'fourth'].first_non_nil
  end

  def test_empty_array
    assert_equal nil, [].first_non_nil
  end

  def test_all_nil_array
    assert_equal nil, [nil, nil, nil].first_non_nil
  end

  def test_block
    assert_equal "yes-4",
      [1,2,3,4,5].first_non_nil {|i| "yes-#{i}" if i > 3 }
  end

  def test_empty_array_with_block
    assert_equal nil, [].first_non_nil {|i| 'test' }
  end

  def test_block_always_returns_nil
    assert_equal nil, ['first', 'second', 'third'].first_non_nil {|i| nil }
  end
end
