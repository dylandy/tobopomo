require "tobopomo/version"
require "tobopomo/data"
require "tobopomo/keymap"

module Tobopomo
  def normalise(string)
    string.gsub(/\s+/, "")
  end
  def tobopomo(input)
    total = 0
    input = input.chars.map{|x| $layout[:"#{x.ord.to_s}"]}.join("")
    string = input.split(/[" "|"ˇ"|"ˋ"|"ˊ"|"˙"]/)
    string = string.map.with_index{|x , index| total = total + x.length;x+input[total + index]}
    return string.map{|x| normalise(x)}
  end
  def tokanji(input)
  end
end
include Tobopomo
