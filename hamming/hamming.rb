class Hamming
  def self.compute(equivalent, nucleotides)
    # check equal length
    unless equivalent.length == nucleotides.length
      raise ArgumentError
    end

    # go through both strings
    assert_equal = 0
    nucleotides_char = nucleotides.split("")
    equivalent.each_char.with_index(0) do |character, index|
      unless nucleotides_char[index] == character.to_s
        assert_equal = assert_equal + 1
      end
    end

    assert_equal
  end
end
