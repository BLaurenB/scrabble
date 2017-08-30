gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test

  def test_it_exists
    scrabble = Scrabble.new("a")
    assert_instance_of Scrabble, scrabble
  end

  def test_it_can_score_a_single_letter
    scrabble = Scrabble.new("a")
    scrabble.point_values
    assert_equal 1, scrabble.score
  end

  def test_it_can_score_a_single_letter
    scrabble = Scrabble.new("f")
    assert_equal 4, scrabble.score
  end

  def test_it_can_score_a_single_letter
    scrabble = Scrabble.new("Hello")
    assert_equal , scrabble.score
  end
  #
  # def test_
  #   scrabble = Scrabble.new()
  #
  #   input/actual =
  #   output/expected =
  #
  #   assert... expected, actual
  # end

end
