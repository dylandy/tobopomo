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
  def tokanji(input, limit=5)
    if input.is_a? Array
      input = input.map{|x| normalise(x)}
      output = [] 
      last = 0
      input.each_with_index do | x , index|
        string = input[last..index].join("")
        if $tsi[string] && index < (input.length - 1)
          next 
        elsif $tsi[string] && index == (input.length - 1)
          output << $tsi[string][0...limit]
        elsif $tsi[string].nil? &&index == (input.length - 1)
          string = input[last...index].join("")
          output << $tsi[string][0...limit]
          output << $tsi[input[index]][0...limit]
        else
          string = input[last...index].join("")
          output << $tsi[string][0...limit]
          last = index
        end
      end
      return output
    elsif input.is_a? String
      normalise(input)
      return $tsi[input][0...limit]
    end
  end
end
include Tobopomo
class String
  def to_bopomo
    tobopomo(self)
  end
  def to_kanji(limit=5)
    tokanji(self, limit)
  end
end
class Array
  def to_kanji(limit=5)
    tokanji(self , limit)
  end
end
