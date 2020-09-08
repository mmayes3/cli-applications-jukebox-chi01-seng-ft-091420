# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
# puts "Enter your name:"
# users_name = gets.strip
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if (1...10).to_a.include? user_input.to_i
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.include? user_input
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |tune, index|
    puts "#{index + 1}. #{tune}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(s)
  puts "Please enter a command:"
  u_input = gets.strip
  if u_input == 'exit'
    exit_jukebox
  else
    if u_input == 'help'
      help
      run(s)
    elsif u_input == 'list'
      list(s)
      run(s)
    elsif u_input == 'play'
      play(s)
      run(s)
    else
      puts "WRONG COMMAND..."
      help
      run(s)
    end
  end
end

#run(songs)




# def play(songs)
#   puts "Please enter a song name or number:"
#   user_input = gets.strip
#   songs.each_with_index do |tune, index|
#     if user_input == tune || user_input.to_i == index+1
#       puts "Playing #{tune}"
#     end
#   end
# end