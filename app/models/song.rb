class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    #  binding.pry
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
     if nil
        self.find_or_create_by(name: "Drake")

      # drake = drake.songs.build(:name => "Drake")
      # drake.save

      #  drake = Artist.new(:id, :name => "Drake")
      #  self.artist = "Drake"
      #  artist = self.new(name: "Drake")
      # song = Song.new(name: "Drake")
    # self.artist(name: "Drake")
     end
   end

end
