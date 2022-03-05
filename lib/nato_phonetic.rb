# frozen_string_literal: true

require_relative 'nato_phonetic/version'
require_relative 'nato_phonetic/converter'

# All parent module
module NatoPhonetic
  def convert(str)
    NatoPhonetic::Converter.new(str).convert
  end

  def to_nato_phonetic
    NatoPhonetic::Converter.new(self).convert
  end

  module_function :convert

  class Error < StandardError; end
  # Your code goes here...
end
