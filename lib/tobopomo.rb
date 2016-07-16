require "tobopomo/version"
require "tobopomo/data"

module Tobopomo
  def self.normalise(input)
    puts input
  end
  def self.char_seperater()
  end
  def tobopomo(input)
    Tobopomo::normalise(input)
    puts $tsi["ㄨㄛˇ"]
  end
  def tokanji(input)
    Tobopomo::normalise(input)
  end
end
include Tobopomo
