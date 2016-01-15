require 'minitest/autorun'
require_relative 'decryption'

class DecryptionTest < Minitest::Test
  def setup
    @decryption = Decryption.new
  end

  def test_standard_cypher_should_be_decrypted_to_plain_text
    cypher = "mjqqt"
    assert_equal "hello", @decryption.decrypt(cypher)
  end

  def test_decyphering_should_be_able_to_loop_through_the_alphabet
    cypher = "?jgwf"
    assert_equal "zebra", @decryption.decrypt(cypher)
  end

  def test_cypher_can_be_decrypted_by_a_variable_shift
    cypher = "nkrru" 
    shift = 6
    assert_equal "hello", @decryption.decrypt(cypher, shift)
  end

  def test_cypher_can_contain_whitespace
    cypher = "yjqj nxnts"
    assert_equal "television", @decryption.decrypt(cypher)
  end

  def test_cypher_can_contain_symbols_and_numbers
    cypher = "ofszfw/;756b"
    assert_equal "january 2016", @decryption.decrypt(cypher)
  end
end
