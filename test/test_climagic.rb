require 'test/unit'
require 'wikiquote'

class CliMagicTest < Test::Unit::TestCase
  def test_CliMagic_cmd
    assert_not_nil WikiQuote.cmd()
  end
end
