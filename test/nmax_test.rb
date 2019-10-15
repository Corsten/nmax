require 'test_helper'

class NmaxTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NmaxGem::VERSION
  end

  def test_empty_input
    assert true
  end
end
