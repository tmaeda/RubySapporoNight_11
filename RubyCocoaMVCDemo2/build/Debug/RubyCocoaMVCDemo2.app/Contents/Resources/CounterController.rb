#
#  CounterController.rb
#  AppleStore
#
#  Created by tmaeda on 09/08/21.
#  Copyright (c) 2009 __MyCompanyName__. All rights reserved.
#

require 'osx/cocoa'

class CounterController < OSX::NSWindowController
  ib_outlet :countLabel
  include OSX

  def init
    if super_init
      # モデルの生成
      @counter = Counter.new
      @counter.add_observer(self)
      return self
    end
  end

  def awakeFromNib
    update
  end

  ib_action :decrease do |sender|
    @counter.decrease
  end

  ib_action :increase
  def increase(sender)
    @counter.increase
  end

  # 画面更新
  def update
    @countLabel.setIntValue(@counter.counter)
    # @countLabel.intValue = @counter.counter
    # という書き方も可能
  end
end
