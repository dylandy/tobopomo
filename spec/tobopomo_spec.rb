require 'spec_helper'

describe Tobopomo do
  it 'has a version number' do
    expect(Tobopomo::VERSION).not_to be nil
  end
  
  describe "#tobopomo" do
    case_one = 'cl cl j06'
    case_two = 'co i '
    case_three = 'dk y3ru0 ' 
    case_four = 'ej94gj gj ' 
    case_five = 'vul3cjo vu86' 
    case_six = 'ji3g4dk vm,6ej94bp6' 
    case_seven = 'u su06'
    case_eight = 'u -4n0 n4j3xu.4fu 18 '
    case_nine = '5;32k6ep 284gj4u6u;4el '
    case_ten = "5;32k6ep 284gj4u u;4el "

    it 'first element first tone test' do
      print tobopomo("su3cl3")
      expect(tobopomo(case_one)).to eq(["ㄏㄠ","ㄏㄠ","ㄨㄢˊ"])
    end

    it 'case two' do
    end
  end

  describe "#tokanji" do
    it 'case one' do
    end
  end
end
