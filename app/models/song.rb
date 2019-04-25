class Song < ActiveRecord::Base
  belongs_to :artists
  belongs_to :genres

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    self.artist = Artist.create(name: "Drake")
  end
end