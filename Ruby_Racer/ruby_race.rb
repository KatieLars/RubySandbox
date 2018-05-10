require 'pry'
require 'io/console'

class Race
  # RACE_TRACK = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
  #   "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
  #   "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
  #   "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
  #   "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
  def initialize
    race_track = Array.new(100, "_")
    @track = race_track.unshift("x")
  end

  def call #start the game
    puts "Ready, Set . . . Press 'x' to move forward as fast as you can"
    board
    race
  end

  def board #return should display board
    start = ""
    @track.each do |e|
      start << e
    end
    print "#{start}"
    # puts "x____________________________________________________________________________________________________"
  end

  def clear_track
    @track = Array.new(100, "_")
  end

  def move(index) #takes the current index of the token
    #clear track and reinstantiate it with the x
    @track.delete("x")
    @track.insert(index, "x")


      #inserts token onto new
    #Moves the token
    #registers a user keypress
    #if X, moves token and cleans up after it
    #if not X, does not move token
  end

  def race

    input = STDIN.getch #this records input but doesn't display it
    @time = Time.now
    current_index = 0
    while current_index < 101 && input == "x" #while input is X, it will increment current_index
      board
       current_index += 1
       move(current_index)
       #problem: if input is not equal to x, then it may exit the while loop
       #problem: input is only being asked for once.
   end
    end_game
    #race will call move
  end

  def timer
    lapsed_time = Time.now - @time
  end

  def end_game #will be called at the end of the race
    puts "Game Over. Your time was #{timer}"
  end

end
