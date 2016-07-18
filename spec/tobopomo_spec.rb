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
      expect(tobopomo(case_one)).to eq(["ㄏㄠ","ㄏㄠ","ㄨㄢˊ"])
    end

    it 'first and last element are both in first tone test' do
      expect(tobopomo(case_two)).to eq([ 'ㄏㄟ', 'ㄛ' ])
    end

    it 'first and last element are both in first tone; however, there are some other tone characters in the middle' do
      expect(tobopomo(case_three)).to eq([ 'ㄎㄜ', 'ㄗˇ', 'ㄐㄧㄢ' ])
    end
    it 'last element has several first tone characters' do
      expect(tobopomo(case_four)).to eq([ 'ㄍㄨㄞˋ', 'ㄕㄨ', 'ㄕㄨ' ])
    end
    it 'middle character is first tone but not for first and last element' do
      expect(tobopomo(case_five)).to eq([ 'ㄒㄧㄠˇ', 'ㄏㄨㄟ', 'ㄒㄧㄚˊ' ])
    end
    it 'long sentence with a single first tone in the middle' do
      expect(tobopomo(case_six)).to eq([ 'ㄨㄛˇ', 'ㄕˋ', 'ㄎㄜ', 'ㄒㄩㄝˊ', 'ㄍㄨㄞˋ', 'ㄖㄣˊ' ])
    end
    it 'first character is first tone and the second character with other tone contenting three symbols and first two symbols cannot form a proper character.' do
      expect(tobopomo(case_seven)).to eq([ 'ㄧ', 'ㄋㄧㄢˊ' ])
    end
    it 'it should return one to eight' do
      expect(tobopomo(case_eight)).to eq([ 'ㄧ', 'ㄦˋ', 'ㄙㄢ', 'ㄙˋ', 'ㄨˇ', 'ㄌㄧㄡˋ','ㄑㄧ','ㄅㄚ' ])
    end
    it 'some null hide in long sentence' do
      expect(tobopomo(case_nine)).to eq([ 'ㄓㄤˇ', 'ㄉㄜˊ', 'ㄍㄣ', 'ㄉㄚˋ', 'ㄕㄨˋ', 'ㄧˊ', 'ㄧㄤˋ','ㄍㄠ' ])
    end
    it 'some null hide in long sentence as well' do
      expect(tobopomo(case_ten)).to eq([ 'ㄓㄤˇ', 'ㄉㄜˊ', 'ㄍㄣ', 'ㄉㄚˋ', 'ㄕㄨˋ', 'ㄧ', 'ㄧㄤˋ','ㄍㄠ' ])
    end

    it 'string method should perform equally as fuction call' do
      expect("u su06".to_bopomo).to eq(['ㄧ', 'ㄋㄧㄢˊ'])
    end
  end

  describe "#tokanji" do
    case_one = ['ㄧ', 'ㄋㄧㄢˊ']
    case_two = ['ㄧ']
    case_three = 'ㄧ'
    it 'a founded keyword' do
      expect(tokanji(case_one)).to eq([[ '一年']])
    end
    it 'a single character should return five characters by default' do
      expect(tokanji(case_two)).to eq([[  '一', '醫', '依', '衣', '伊' ]])
    end

    it 'a string input would return a proper character output array' do
      expect(tokanji(case_three)).to eq([  '一', '醫', '依', '衣', '伊' ])
    end

    it 'should limit length of return' do
      expect(tokanji(case_three , 10).length).to eq(10)
      expect(tokanji(case_three , 1).length).to eq(1)
    end

    it 'should be actted properly using array function' do
      expect(tobopomo("u su06").to_kanji).to eq([[ '一年']])
      expect(tobopomo("u ").to_kanji(10).first.count).to eq(10)
    end
  end
end
