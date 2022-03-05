# frozen_string_literal: true

module NatoPhonetic
  # Convert class to convert plane alphabet sentenses to phonetic alphabet.
  class Converter
    NATO_PHONETIC_ALPHABET_HASH = {
      a: 'Alpha',
      b: 'Bravo',
      c: 'Charlie',
      d: 'Delta',
      e: 'Echo',
      f: 'Foxtrot',
      g: 'Golf',
      h: 'Hotel',
      i: 'India',
      j: 'Juliett',
      k: 'Kilo',
      l: 'Lima',
      m: 'Mike',
      n: 'November',
      o: 'Oscar',
      p: 'Papa',
      q: 'Quebec',
      r: 'Romeo',
      s: 'Sierra',
      t: 'Tango',
      u: 'Uniform',
      v: 'Victor',
      w: 'Whiskey',
      x: 'X-ray',
      y: 'Yankee',
      z: 'Zulu',
      '0': 'Zero',
      '1': 'One',
      '2': 'Two',
      '3': 'Three',
      '4': 'Four',
      '5': 'Five',
      '6': 'Six',
      '7': 'Seven',
      '8': 'Eight',
      '9': 'Nine'
    }.freeze

    def initialize(str)
      @raw_input = str
    end

    def convert
      @phonetic = ''
      @raw_input.each_char do |c|
        if phonetic = NATO_PHONETIC_ALPHABET_HASH[:"#{c.downcase}"] # rubocop:disable Lint/AssignmentInCondition
          @phonetic += "#{phonetic} "
        end
      end
      @phonetic.delete_suffix! ' '
    end
  end
end
