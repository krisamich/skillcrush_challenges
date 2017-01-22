class FavoriteSong

	attr_accessor :name, :artist, :album

	def about_song
		puts "My favorite song is #{@name} by #{@artist} from their album, #{@album}."
	end

end

my_favorite = FavoriteSong.new
my_favorite.name = "The Day The World Went Away"
my_favorite.artist = "NIN"
my_favorite.album = "The Fragile"

puts my_favorite.about_song

