#!/usr/bin/env ruby
require_relative '../lib/logic'

class Board
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @turn = 'x'
  end

  def boarding
    linewidth = 60
    puts 'Welcome to Tic Tac Toe'.center(linewidth)
    puts 'Reference board'
    puts '-------------'
    puts '| 1 | 2 | 3 |'
    puts '-------------'
    puts '| 4 | 5 | 6 |'
    puts '-------------'
    puts '| 7 | 8 | 9 |'
    puts '-------------'
    puts 'Playing Board'
    puts '-------------'
    @board.each_with_index do |cell, index|
      print "| #{cell} "
      print "|\n-------------\n" if [2, 5, 8].include?(index)
    end
  end

  def fill_the_board
    if @turn == 'x'
      puts 'Player 1 (X) choice (1-9)?:'
      player1 = gets.chomp.to_i
      check_entry(player1)
    else
      puts 'Player 2 (O) choice (1-9)?:'
      player2 = gets.chomp.to_i
      check_entry(player2)
    end
    system 'clear'
    start_game
  end

  def check_entry(entry)
    if entry > 9 || entry < 1 || !entry.is_a?(Numeric)
      puts 'Invalid move, please choose a number between 1 and 9'
      sleep 1

    elsif @board[entry - 1] != ' '
      puts 'Invalid move. Cell filled already. Choose another cell.'
      sleep 1

    elsif @turn == 'x'
      @board[entry - 1] = 'X'
      @turn = 'o'

    else
      @board[entry - 1] = 'O'
      @turn = 'x'

    end
    boarding
  end

  def check_fill
    if @board.include?(' ')
      fill_the_board
    else
      puts "It's a tie"
      puts 'The board is filled out'
      exit
    end
  end

  def who_won(fig)
    case fig
    when 'X'
      puts 'Player 1 with (X) Wins'
      exit
    when 'O'
      puts 'Player 2 with (O) Wins'
      exit
    end
  end
end

class Game < Board
  include Winlines

  def start_game
    boarding
    check_for_winner(@board)
    check_fill
  end
end
play = Game.new
play.start_game
