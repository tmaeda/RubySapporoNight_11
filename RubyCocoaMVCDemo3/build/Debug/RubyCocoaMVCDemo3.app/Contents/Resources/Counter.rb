#
#  Counter.rb
#  AppleStore
#
#  Created by tmaeda on 09/08/21.
#  Copyright (c) 2009 __MyCompanyName__. All rights reserved.
#

class Counter < OSX::NSObject
  kvc_accessor :counter
  
  def initialize
    @counter = 0
  end
  
  def increase
    self.counter += 1
  end
  
  def decrease
    self.counter -= 1
  end
end
