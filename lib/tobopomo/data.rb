require "json"

data_path = File.dirname(__FILE__).split("/")[0..-3].join("/") + "/data/tsi.json"

$tsi = JSON.load(open(data_path))
