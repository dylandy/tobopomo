require "json"
module Tobopomo
  data_path = File.dirname(__FILE__).split("/")[0..-3].join("/") + "/data/tsi.json"
  TSI = JSON.load(open(data_path))
end
