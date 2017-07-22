class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    true_path = "#{@path}/*.mp3"
    collection = Dir[true_path]
    collection.map do |song|
      song.split("/").last
    end
    #binding.pry
  end

  def import
    songs = files.map do |file|
      file.split(" - ")
    end
    #binding.pry
    songs.each do |song|
      Artist.find_or_create_by_name(song[0]).add_song(song[1])
      #binding.pry
    end
  end
end
