#
#  CounterController.rb
#  AppleStore
#
#  Created by tmaeda on 09/08/21.
#  Copyright (c) 2009 __MyCompanyName__. All rights reserved.
#

require 'osx/cocoa'

class CounterController < OSX::NSObjectController
  include OSX

  def init
    if super_init
      return self
    end
  end

  ib_action :decrease do |sender|
    content.decrease
  end

  ib_action :increase
  def increase(sender)
    content.increase
  end
end
