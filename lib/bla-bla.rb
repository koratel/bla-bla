module BlaBla

  WORD_LIST = [
    "zero", "one", "two", "three", "four",
    "five", "six", "seven", "eight", "nine"
  ]

  def self.random_words(n)
    WORD_LIST.sample(n)
  end

  def self.generate_author
    random_words(2).collect { |word| word.capitalize }.join(" ")
  end

  def self.generate_title
    random_words(rand(4)+1).join(" ").capitalize
  end

  def self.generate_sentence
    random_words(rand(6)+5).join(" ").capitalize << "."
  end

  def self.generate_content
    Array.new(rand(5)+1).collect!{ generate_sentence }.join(" ")
  end
end
