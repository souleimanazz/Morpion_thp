class BoardCase
  attr_accessor :array
  
  def initialize
    @array = [" ", " ", " ", " "] #ne marche pas avec x3 
  end

  def case
    puts "#{array[0]} | #{array[1]} | #{array[2]} | #{array[3]} | " # | pour la mise en forme
    puts " " + " " + "-------------" 
  end

  def  horizontal_number_case
    array[1] = "1"
    array[2] = "2"
    array[3] = "3"
  end

  def position_vertical(letter)
    array[0] = letter
  end

  def replace(number, value)
    if array[number] == " "
      array[number] = value
      return true
    else
      puts " \n "
      puts "-----> /!\ TU VIENS DE PERDRE 1 TOUR EN JOUANT SUR UNE CASE DEJA REMPLIE /!\ "
      return false
    end
  end
end
