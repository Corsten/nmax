require "nmax/version"

module Nmax
  class Error < StandardError; end

  def nmax(text, numbers_count = 1)
    numbers_count
  end

  class String
    include Nmax
  end
  # Your code goes here...
end
