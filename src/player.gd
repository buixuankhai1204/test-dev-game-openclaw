extends KinematicBody2D

# Player Node Script
var player_id = ""
var health = 100
var stamina = 100

func _ready():
    print("Player node initialized with ID: ", player_id)

func reduce_health(amount):
    health -= amount
    print("Player ", player_id, " took damage. Current health: ", health)
    if health <= 0:
        print("Player ", player_id, " is defeated.")

func reduce_stamina(amount):
    stamina -= amount
    print("Player ", player_id, " used stamina. Current stamina: ", stamina)
    if stamina < 0:
        stamina = 0