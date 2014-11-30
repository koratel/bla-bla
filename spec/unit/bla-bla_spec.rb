require_relative '../../lib/bla-bla'
require 'test/unit'

class BlaBlaSpec < Test::Unit::TestCase
  def setup
    @word_list = BlaBla::WORD_LIST
  end

  def test_random_words
    assert_equal(10, BlaBla.random_words(10).size)
    assert(BlaBla.random_words(10).all? { |word| @word_list.include?(word) })
  end

  def test_generate_author
    assert(/\A[A-Z][a-z]* [A-Z][a-z]*\Z/ === BlaBla.generate_author)
  end

  def test_generate_title
    assert(/\A[A-Z][a-z]*( [a-z]+){,4}\Z/ === BlaBla.generate_title)
  end

  def test_generate_sentence
    assert(/\A[A-Z][a-z]*( [a-z]+){,9}.\Z/ === BlaBla.generate_sentence)
  end

  def test_generate_content
    assert(/\A[A-Z][a-z]*( [a-z]+){,9}.( [A-Z][a-z]*( [a-z]+){,9}.){,4}\Z/ === BlaBla.generate_content)
  end
end
