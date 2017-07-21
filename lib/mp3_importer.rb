class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    true_path = "#{path}.*mp3"
    files = Dir[true_path].each {|file| require file }
    #binding.pry
  end
end
