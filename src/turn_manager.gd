extends Node

# Manages turn-based logic
var current_turn = 1
var max_turns = 10
var players = [] # Keep track of player nodes

func _ready():
    print("Turn Manager ready. Starting game turns.")

func add_player(player):
    players.append(player)
    print("Player added. Total players:", players.size())

func next_turn():
    print("Executing turn ", current_turn)
    if current_turn > max_turns:
        print("Game over. Finalizing match.")
        finalize_game()
    else:
        # Placeholder: alternate turns between players
        var active_player = players[(current_turn - 1) % players.size()]
        print("It is Player ", active_player.player_id, "'s turn.")
        current_turn += 1

func finalize_game():
    print("Game finished. Analyzing results.")
    # Add logic to determine the winner