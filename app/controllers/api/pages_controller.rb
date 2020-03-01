class Api::PagesController < ApplicationController
  def fortune_action
    @message = "Welcome to the fortune app! Your fortune is:"
    fortune_list = ["Tomorrow it will rain", "You will be a good person someday", "Green will win on Thursday"]
    i = rand(2)
    @your_fortune = fortune_list[i]

    render "sample.json.jb"
  end

  def lotto
    @lotto_message = "Welcome to the lotto! Your numbers are:"
    # i = rand(1..60)
    # @lotto_number = i
    lotto_array = []
    6.times do
      i = rand(1..60)
      lotto_array << i
    end
    @lotto_number = lotto_array.sort

    render "lotto.json.jb"
  end

  def too_many_beers
    @title = "99 Bottles of beer on the wall"
    # @beer_message = "99 bottles of beer on the wall"

    @beer_game = "99 Bottles of Beer on the wall:"
    bottles = 99
    text_array = []
    while bottles >= 0
      if bottles > 2
        text = "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer." " Take one down pass it around, #{bottles - 1} bottles of beer on the wall."
      elsif bottles == 2
        text = "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer." " Take one down pass it around, #{bottles - 1} bottle of beer on the wall."
      elsif bottles == 1
        text = "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer." " Take one down pass it around, no more bottles of beer on the wall."
      elsif bottles == 0
        text = "No more bottles of beer on the wall, no more bottles of beer." " Go to the store and buy some more, 99 bottles of beer on the wall."
      end

      bottles -= 1
      text_array << text
      @beer_message = text_array
    end
    render "99bottles.json.jb"
  end
end
