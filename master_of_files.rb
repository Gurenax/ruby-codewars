class String
    def is_audio
        !self.match(/^[A-Za-z]*\.(mp3|flac|alac|aac)$/).nil?
    end

    def is_img
        !self.match(/^[A-Za-z]*\.(jpg|jpeg|png|bmp|gif)$/).nil?
    end
end

puts "Nothing Else Matters.mp3".is_audio#, false, "Expected false" )
puts "NothingElseMatters.mp3".is_audio#, true, "Expected true" )
puts "DaftPunk.FLAC".is_audio#, false, "Expected false" )
puts "DaftPunk.flac".is_audio#, true, "Expected true" )
puts "AmonTobin.aac".is_audio#, true, "Expected true" )
puts " Amon Tobin.alac".is_audio#, false, "Expected false" )
puts "tobin.alac".is_audio#, true, "Expected true" )
puts "Home.jpg".is_img#, true, "Expected true" )
puts "flat.jpeg".is_img#, true, "Expected true" )
puts "icon.bmp".is_img#, true, "Expected true" )
puts "icon2.jpg".is_img#, false, "Expected false" )
puts "bounce.gif".is_img#, true, "Expected true" )
puts "animate bounce.GIF".is_img#, false, "Expected false" )
puts "transparency.png".is_img#, true, "Expected true" )