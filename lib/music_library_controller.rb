require 'pry'
class MusicLibraryController

  attr_accessor :path

  def initialize(path="./db/mp3s")
    @path = path 
    music_import = MusicImporter.new(path)
    music_import.import
  end 
  
  def call 
    loop do 
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      input = gets.chomp
      break if input == "exit" 
    end 
  end
  
  def list_songs
    Song.all.sort {|a,b| a.name <=> b.name}.each.with_index do |song, i|
      puts "#{i+1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    end
  end 
  
  def list_artists
    #binding.pry
    Artist.all.sort{|a, b| a.name <=> b.name}.each_with_index do |a, i|
      puts "#{i+1}. #{a.name}"
    end
  end 
  
  def list_genres
    Genre.all.sort{|a, b| a.name <=> b.name}.each_with_index do |g, i|
      puts "#{i+1}. #{a.name}"
    end
  end 
  
  def  list_songs_by_artist
    puts "Please enter the name of an artist:"
    input = gets.chomp
    Artist.all.sort{|a, b| a.name <=> b.name}.each_with_index do |q, i|
      binding.pry
      if artist.name == input 
        puts "#{i+1} #{artist.song.name} - #{artist.genre.name}"
      end 
    end
   
  end 
  
  def list_songs_by_genre
    
  end 
  
  def play_song
    
  end 
  
  
  
  
  
  
  
  
  
  
  
 end 