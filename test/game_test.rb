require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require './lib/player'
require './lib/turn'
require './lib/game'

class GameTest < Minitest::Test
  def setup
    @card1 = Card.new(:heart, 'Jack', 11)
    @card2 = Card.new(:heart, '10', 10)
    @card3 = Card.new(:heart, '9', 9)
    @card4 = Card.new(:diamond, 'Jack', 11)
    @card5 = Card.new(:heart, '8', 8)
    @card6 = Card.new(:diamond, 'Queen', 12)
    @card7 = Card.new(:heart, '3', 3)
    @card8 = Card.new(:diamond, '2', 2)

    @deck1 = Deck.new([@card1, @card2, @card5, @card8])
    @deck2 = Deck.new([@card3, @card4, @card6, @card7])

    @player1 = Player.new("Player 1", @deck1)
    @player2 = Player.new("Player 2", @deck2)

    @game = Game.new(@player1, @player2)
  end

  def test_it_exists
    # skip
    assert_instance_of Game, @game
  end

  def test_readable_attributes
    # skip
    assert_equal @player1, @game.player1
    assert_equal @player2, @game.player2
    assert_equal 1, @game.turn_number
  end


  def test_turn_shows_turn_messages
    # skip
    assert_equal "Turn 5: WAR - Player 1 won 6 cards", @game.turn_messages(5, :war, "Player 1")
  end

  def test_returns_draw
    # skip

    assert_equal "---- DRAW ----", @game.final_message
  end

  def test_returns_win
    skip
  end


end