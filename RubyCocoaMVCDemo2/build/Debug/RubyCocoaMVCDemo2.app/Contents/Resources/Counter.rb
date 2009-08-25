#
#  Counter.rb
#  AppleStore
#
#  Created by tmaeda on 09/08/21.
#  Copyright (c) 2009 __MyCompanyName__. All rights reserved.
#

require 'observer'

class Counter
  include Observable
  attr_reader :counter
  
  def initialize
    @counter = 0
  end
  
  def increase
    @counter += 1
    notify
  end
  
  def decrease
    @counter -= 1
    notify
  end
  
  def notify
    self.changed
    self.notify_observers
  end
end
