def song_decoder(song)
    song.gsub("WUB"," ").gsub(/\s+/, ' ').strip
end

puts song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")
#  =>  WE ARE THE CHAMPIONS MY FRIEND
puts song_decoder("AWUBBWUBC")#, "A B C","WUB should be replaced by 1 space");
puts song_decoder("AWUBWUBWUBBWUBWUBWUBC")#, "A B C","multiples WUB should be replaced by only 1 space");
puts song_decoder("WUBAWUBBWUBCWUB")#, "A B C", "heading or trailing spaces should be removed");


#Best practice:
# def song_decoder(song)
#     song.gsub(/(WUB)+/, ' ').strip
#   end