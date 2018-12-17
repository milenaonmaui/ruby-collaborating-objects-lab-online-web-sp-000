class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(filename)
    name_array = filename.split(" - ")
    song = self.new(name_array[1])
    song.artist.name = name_array[0]
    song
  end
end
