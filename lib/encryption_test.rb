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

  def test_alphabet_should_loop_back_to_the_beginning_when_encrypted_by_default_shift
    plain_text = "zebra"
    assert_equal "djgwf", @encryption.encrypt(plain_text)
  end

  def test_plain_text_should_be_encrypted_by_variable_shift
    plain_text = "hello"
    shift = 6
    assert_equal "nkrru", @encryption.encrypt(plain_text, shift)
  end

  def test_alphabet_should_loop_back_to_the_beginning_when_encrypted_by_variable_shift
    plain_text = "zebra"
    shift = 6
    assert_equal "ekhxg", @encryption.encrypt(plain_text, shift)
  end

  def test_plain_text_can_include_whitespace
    plain_text = "hello world"
    assert_equal "mjqqteatwqi", @encryption.encrypt(plain_text)
  end
end
