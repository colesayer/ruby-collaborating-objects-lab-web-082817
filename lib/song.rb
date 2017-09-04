require 'pry'
class Song

  attr_accessor :name, :artist


def initialize(name)
  @name = name
  @artist = artist
end
#Failure/Error: expect(new_instance.artist.name).to eq('Michael Jackson')
def self.new_by_filename(file_name)
  artist = file_name.split(" - ")[0]
  name = file_name.split(" - ")[1]
  song = self.new(name)
  song.artist_name=(artist)
  song
end

def artist_name=(artist_name)
  @artist = Artist.find_or_create_by_name(artist_name)
  @artist.add_song(self)
end
#<Artist:0x007fd70c0bc850 @name="Michael Jackson", @songs=[]>
#we want the song to end up in the array of songs

end
