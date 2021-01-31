require 'pry'
class Board
    attr_accessor :cells
    def initialize()
       reset!
    end
    def reset!
        @cells = Array.new(9, " ")
    end
    def display
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end
    def position(input)
       cells[input.to_i-1]
    end
    def full?
        cells.all?{|token| token == "X" || token == "O"}
    end
    def turn_count
        self.cells.count{|turn| turn == "X" || turn == "O"}
    end
    def taken?(i)
        position(i) == "X" || position(i) == "O"
    end
    def valid_move?(i)
        i.to_i.between?(1,9) && !taken?(i)
    end
    def update(input, player)
        self.cells[input.to_i-1] = player.token
    end

end