# Tobopomo
An zuyin input method api for transforming latin alphabet input into Bopomo script and Chinese characters.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tobopomo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tobopomo

## Usage

In your script, require the tobopomo module.

```
require "tobopomo"
```
After requiring, you can either use fuctions that provides from the module or using it directly from String and Array.

```
tobopomo("su3cl3a8 ") // [ 'ㄋㄧˇ', 'ㄏㄠˇ', 'ㄇㄚ' ]

tokanji("ㄋ一ˇㄏㄠˇㄇㄚ ") // [ [ '你好嗎', '妳好嗎' ] ]

tokanji("ㄍㄨˇ") // [ [ '股', '古', '谷', '鼓', '骨' ] ]  #default output 5 of characters

tokanji("ㄍㄨˇ" , 3) // [ [ '股', '古', '谷' ] ] #if you want to change the output number just simply pass the number as second parameter.
```

```
"su3cl3a8 ".to_bopomo // [ 'ㄋㄧˇ', 'ㄏㄠˇ', 'ㄇㄚ' ]

"ㄋ一ˇㄏㄠˇㄇㄚ".to_kanji // [ [ '你好嗎', '妳好嗎' ] ]

"ㄍㄨˇ".to_kanji // [ [ '股', '古', '谷', '鼓', '骨' ] ]

"ㄍㄨˇ".to_kanji(3) // [ [ '股', '古', '谷'] ]  #pass the limit number as parameter into tokanji method in string mode.
```

##Credit

Thanks for chewing team and libchewing's help. Without them this project wouldn't be successed.

## License

The project is licensed under LGPL-3.0 License. For further information, please checkout the License file or the [GNU website](https://www.gnu.org/licenses/lgpl-3.0.en.html)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dylandy/tobopomo.

