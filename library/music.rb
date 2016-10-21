require_relative 'item' # => Create Path

class Music < Item

#  @@num_musics_total = 0

  def play
    "#{title}: Ba da da da..."
  end
end
