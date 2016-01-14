require 'minitest/autorun'
require_relative 'decryption'

class DecryptionTest < Minitest::Test
  def setup
    @decryption = decryption.new
  end

  def test_standard_cypher_should_be_decrypted_to_plain_text
    cypher = "mjqqt"
    assert_equal "hello", @decryption.decrypt(cypher)
  end

  def test_decyphering_should_be_able_to_loop_through_the_alphabet
    cypher = "ejgwf"
    assert_equal "zebra", @decryption.decrypt(cypher)
  end
end
