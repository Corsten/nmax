require 'nmax/version'
require 'nmax/helpers'

module Nmax
  module_function

  MAX_LENGTH = 1000

  class Error < StandardError; end

  def nmax(text, numbers_count = 1)
    raise Error, 'Please enter input text' if text.empty?
    numbers_count
  end

  def get_array_of_numbers
    numbers = []
    new_number_chars = []
    ARGF.each_char do |char|
      return if new_number_chars.length >= MAX_LENGTH
      new_number_chars << char && next if is_digit? char
      new_number = new_number_chars.join('').to_i
      numbers << new_number if !new_number.zero? && (numbers.empty? || new_number > numbers.last)
      new_number_chars = []
    end
    numbers
  end

  def is_digit?(char)
    char.match?(/^\d+$/)
  end

  class String
    include Nmax
  end
end
