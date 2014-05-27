class AtbashCipher
  def initialize(abc)
    @abc = abc
  end

  def encode(str)
    buffer = []
    str.each_char do |x|
      i = @abc.index(x)
      buffer.push(i.nil? ? x : @abc.reverse[i])
    end
    return buffer.join('')
  end

  def decode(str)
    encode(str)
  end
end