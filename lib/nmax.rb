require 'nmax/version'
require 'nmax/helpers'

module Nmax
  module_function

  class Error < StandardError; end

  def nmax(text, numbers_count = 1)
    raise Error, 'Please enter input text' if text.empty?
    numbers_count
  end

  class String
    include Nmax
  end
end
