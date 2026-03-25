extends Node

# Basic Godot Game Scene Script

func _ready():
    print("Game started. Setting up match.")
    setup_game()

func setup_game():
    # Placeholder logic for initializing the game
    print("Initializing players and scene.")
    create_players()
    start_turn_based_logic()

func create_players():
    print("Spawning Player 1 and Player 2.")
    # Add logic for creating player nodes in the scene

func start_turn_based_logic():
    print("Starting turn-based mechanics.")
    # Placeholder for managing turns with basic rules
    # Player 1 goes first, alternating every turn.