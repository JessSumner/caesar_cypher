require 'minitest/autorun'
require_relative 'encryption'

class EncryptionTest < Minitest::Test
  def setup
    @encryption = Encryption.new
  end

  def test_plain_text_should_be_encrypted_by_default_shift
    plain_text = "hello"
    assert_equal "mjqqt", @encryption.encrypt(plain_text)
  end

  def test_alphabet_should_loop_back_to_the_beginning
    plain_text = "zebra"
    assert_equal "ejgwf", @encryption.encrypt(plain_text)
  end

end
