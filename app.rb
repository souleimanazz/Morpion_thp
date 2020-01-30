require 'bundler'
Bundler.require

require_relative 'lib/app/player'
require_relative 'lib/app/boardcase'
system "clear"
 




  puts "                                                 WELCOME TO :
                                                                |__   __/ __ \ / ____| |__   __|  ____|/ ____| |__   __|/\    / ____|
                                                                   | | | |  | | (___      | |  | |__  | (___      | |  /  \  | (___  
                                                                   | | | |  | |\___ \     | |  |  __|  \___ \     | | / /\ \  \___ \ 
                                                                   | | | |__| |____) |    | |  | |____ ____) |    | |/ ____ \ ____) |
                                                                   |_|  \____/|_____/     |_|  |______|_____/     |_/_/    \_|_____/ (+1 à ceux qui ont la ref)
"
puts "\n"
puts "              -----------------------------> Pour jouer c'est très simple, quand c'est ton tour, il te suffit de lire le tableau et d'entrée la combinaison de la lettre en ordonnée (A,B ou C) en majuscule (sinon cela passe ton tour) et du numero en abcisse (1,2 ou 3) <------------------------------"
puts "\n"
puts " Joueur1 Entre ton pseudo:"
print ">" 
name1 = gets.chomp
player1 = Player.new("#{name1}")
puts "Joueur 2 Entre ton pseudo:"
name2 = gets.chomp
player2 = Player.new("#{name2}")
puts "Que le meilleur gagne!"


 place = BoardCase.new           #Va venir crée la grille avec boardcase
 A = BoardCase.new
 B = BoardCase.new
 C = BoardCase.new
 place.horizontal_number_case
 A.position_vertical("A")
 B.position_vertical("B")
 C.position_vertical("C")
  

  while true   
  place.case
  A.case
  B.case
  C.case
  
                                      
  puts "#C'est au tour de #{name1}:"   
  position = gets.chomp
  if position[0] == "A"
    A.replace(position[1].to_i, "X")
  elsif position[0] == "B"
    B.replace(position[1].to_i, "X")
  elsif position[0] == "C"
    C.replace(position[1].to_i, "X")
  end


  place.case
  A.case
  B.case
  C.case


  #Pas mal brouillon mais ce sont toutes les conditions de victoire pour le joueur 1 
  if A.array[1] == "X" && A.array[2] == "X" && A.array[3] == "X" or B.array[1] == "X" && B.array[2] == "X" && B.array[3] == "X" or C.array[1] == "X" && C.array[2] == "X" && C.array[3] == "X" or A.array[1] == "X" && B.array[2] == "X" && C.array[3] == "X" or C.array[1] == "X" && B.array[2] == "X" && A.array[3] == "X" or A.array[1] == "X" && B.array[1] == "X" && C.array[1] == "X" or A.array[2] == "X" && B.array[2] == "X" && C.array[2] == "X" or A.array[3] == "X" && B.array[3] == "X" && C.array[3] == "X" 
    puts "Victoire facile pour #{name1}"
    break
  end

  

  puts "#C'est au tour de #{name2}"
  position = gets.chomp
  if position[0] == "A"
    A.replace(position[1].to_i, "O")
  elsif position[0] == "B"
    B.replace(position[1].to_i, "O")
  elsif position[0] == "C"
    C.replace(position[1].to_i, "O")
  end



  #Comme pour le 1 mais pour le joueur 2 
  if A.array[1] == "O" && A.array[2] == "O" && A.array[3] == "O" or B.array[1] == "O" && B.array[2] == "O" && B.array[3] == "O" or C.array[1] == "O" && C.array[2] == "O" && C.array[3] == "O" or A.array[1] == "O" && B.array[2] == "O" && C.array[3] == "O" or C.array[1] == "O" && B.array[2] == "O" && A.array[3] == "O" or A.array[1] == "O" && B.array[1] == "O" && C.array[1] == "O" or A.array[2] == "O" && B.array[2] == "O" && C.array[2] == "O" or A.array[3] == "O" && B.array[3] == "O" && C.array[3] == "O" 
   puts "Viiictoire pour #{name2}"
   break
 end



 #Conditions fin de match
  if A.array[1] != " " && A.array[2] != " " && A.array[3] != " " && B.array[1] != " " && B.array[2] != " " && B.array[3] != " " && C.array[1] != " " && C.array[2] != " " && C.array[3] != " "
    puts "Aucun des deux ne gagne, vous pouvez reset le jeu pour une revanche"
    break
  end
end
