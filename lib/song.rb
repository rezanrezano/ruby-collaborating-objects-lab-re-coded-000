require 'pry'
class Song
  attr_accessor :name,:artist
  def initialize(name)
    @name=name
  end
  def self.new_by_filename(file)
    a=file.split(" - ")
    artist=Artist.find_or_create_by_name(a[0])
    song=Song.new(a[1])
    artist.add_song(song)

    song
    # binding.pry
  end
end
