#
#  rb_main.rb
#  RubyCocoaMVCDemo1
#
#  Created by tmaeda on 09/08/24.
#  Copyright (c) 2009 __MyCompanyName__. All rights reserved.
#

require 'osx/cocoa'

def rb_main_init
  path = OSX::NSBundle.mainBundle.resourcePath.fileSystemRepresentation
  rbfiles = Dir.entries(path).select {|x| /\.rb\z/ =~ x}
  rbfiles -= [ File.basename(__FILE__) ]
  rbfiles.each do |path|
    require( File.basename(path) )
  end
end

if $0 == __FILE__ then
  rb_main_init
  OSX.NSApplicationMain(0, nil)
end