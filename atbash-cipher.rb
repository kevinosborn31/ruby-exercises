require 'pry'

class Atbash

  def initialize input
    @word = input.downcase
    @abc = ('a'..'z').to_a
    @abc_reverse = @abc.reverse
  end

  def encode

    message = ""

    @word.each_char do |letter|
      index = @abc.index(letter)
      cipher_character = @abc_reverse[index]

      message << cipher_character
    end
    message
  end

  puts "what's your secret message?"
  word = gets.chomp
  puts "=" * 20
  cipher = Atbash.new(word)

  puts cipher.encode

end
