require 'RMagick'

anim = Magick::ImageList.new(*Dir['*.jpg'])
anim.each {|img| img.resize!(245,326) }
anim.delay = 0.25
anim.write('vibrating_mike.gif')
