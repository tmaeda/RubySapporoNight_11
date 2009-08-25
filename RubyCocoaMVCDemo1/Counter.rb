#
#  Counter.rb
#  AppleStore
#
#  Created by tmaeda on 09/08/21.
#  Copyright (c) 2009 __MyCompanyName__. All rights reserved.
#

class Counter
  attr_reader :counter
  
  def initialize
    @counter = 0
  end
  
  def increase
    @counter += 1
  end
  
  def decrease
    @counter -= 1
  end
end
