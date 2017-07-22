class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.find {|artist| artist.name == name}
      @@all.find {|artist| artist.name == name}
    else
      Artist.new(name).save
      @@all.find {|artist| artist.name == name}
    end
    #binding.pry
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
