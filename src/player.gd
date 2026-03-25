extends KinematicBody2D

# Player Node Script with Logic
var player_id = ""
var health = 100
var stamina = 100
var damage_dealt = 0

func _ready():
    print("Player node initialized with ID: ", player_id)

func take_damage(amount):
    health -= amount
    print("Player ", player_id, " took damage. Current health: ", health)
    if health <= 0:
        print("Player ", player_id, " is defeated.")
        return true # Player is defeated
    return false

func use_stamina(amount):
    if stamina >= amount:
        stamina -= amount
        print("Player ", player_id, " used stamina. Current stamina: ", stamina)
        return true # Stamina successfully used
    else:
        print("Player ", player_id, " does not have enough stamina.")
        return false

func deal_damage(amount):
    damage_dealt += amount
    print("Player ", player_id, " dealt ", amount, " damage. Total: ", damage_dealt)

func get_damage_dealt():
    return damage_dealt