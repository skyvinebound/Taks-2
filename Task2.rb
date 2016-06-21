class Player
  attr_accessor :name,:manna,:blood
  
    def initialize name
      @manna = 40
      @blood = 100
      @name = name 
      
  end
  
  def Attack
    @manna -= 10
  end
  
  def Defend
    @blood -= 20
  end
  
end

players = Hash.new

puts "==========================="
puts "Welcome to the Battle Arena"
puts "---------------------------"
puts " Decription "

puts " type 'new' to create a character"

puts " type 'start' to begin the fight "
  input=gets.chomp

if input.eql? "new"
  
puts " What's your name? "
  input=gets.chomp
  
  players[input] = Player.new(input)
  
   puts "name : #{players[input].name}"
   puts "manna : #{players[input].manna}"
   puts "blood : #{players[input].blood}"
 
  
  puts " Current Player : #{players.count} "
  
  players.each do |key, value| 
    puts "name : #{key}, blood : #{value.blood}, manna : #{value.manna}" 
  end
  
  puts " Type ' Start ' to play a Game! " 
  input = gets.chomp
  
  puts "==========================="
  puts "Welcome to the Battle Arena"
  puts "---------------------------"
  puts " Decription " 
  puts " *Minimum Player 2 Person, Max Player 3 person "
  puts " --------------------------------------------- "
  
  puts " Add player to play game! Type 'Add' "
  input = gets.chomp
  
  puts " New Playaer Joined, Please Type your name. "
  puts " What's your name? "
  input = gets.chomp
  
  players[input] = Player.new(input)
  
   puts "name : #{players[input].name}"
   puts "manna : #{players[input].manna}"
   puts "blood : #{players[input].blood}"
   
   puts "Current Player : #{players.count}"
   
   
    
elsif input.eql? "start"
  puts " You Play as Guest!"
  puts " Type 'play' to start a Game! "  
  input=gets.chomp
  
  puts "==========================="
  puts "Welcome to the Battle Arena"
  puts "---------------------------"
  puts " Decription "
  

    end 