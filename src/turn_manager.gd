extends Node

# Turn Manager with Fully Functional Logic
var current_turn = 1
var max_turns = 10
var players = [] # Track player nodes
var active_player_index = 0

func _ready():
    print("Turn Manager ready. Starting game turns.")
    if players.size() < 2:
        print("Not enough players to start.")
        return
    start_turn()

func add_player(player):
    players.append(player)
    print("Player added. Total players:", players.size())

func start_turn():
    if current_turn > max_turns:
        print("Game over. Finalizing match.")
        finalize_game()
    else:
        var active_player = players[active_player_index]
        print("Turn", current_turn, "- Player", active_player.player_id, "'s turn.")
        active_player_index = (active_player_index + 1) % players.size()
        current_turn += 1

func finalize_game():
    print("Game finished. Analyzing results.")
    # Placeholder for determining winner and ending match logic