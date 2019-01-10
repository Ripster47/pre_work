class Song

  def initialize (artist, song, lyric)
    @artist = artist
    @song = song
    @lyric = lyric
  end

  def artist=(input_artist)
    @artist = input_artist
  end

  def artist
    return @artist
  end

  def song=(input_song)
    @song = input_song
  end

  def song
    return @song
  end

  def lyric=(input_lyric)
    @lyric = input_lyric
  end

  def lyric
    return @lyric
  end

  def info
    return "The band " + artist + " wrote the song " + song + " in the year 1986"
  end

end

music = Song.new("Metallica", "Master of Puppets", "Obey Your Master! Master!")

puts "My favorite band is" + " " + music.artist + ", and their best song is" + " " + music.song + "! I love singing along..." + " " + music.lyric

puts music.info
