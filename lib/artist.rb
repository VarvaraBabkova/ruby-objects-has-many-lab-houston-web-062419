class Artist

  attr_accessor :name

  def initialize (name)
    @name = name
    @songs = []
  end

  def songs
    #@songs
    Song.all.select {|song| song.artist == self}
  end
  def add_song (song)
    song.artist = self
    #@songs << song

  end

  def add_song_by_name(name)
    Song.new(name).artist = self
  end

  def song_count
    self.songs.size
  end
end
