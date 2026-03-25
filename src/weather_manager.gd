extends Node

# Manages dynamic weather effects
var current_weather = "Clear"
var weather_types = ["Clear", "Rainy", "Windy"]

func _ready():
    print("Weather Manager initialized.")
    randomize_weather()

func randomize_weather():
    current_weather = weather_types[randi() % weather_types.size()]
    print("Weather changed to:", current_weather)
    apply_weather_effects()

func apply_weather_effects():
    match current_weather:
        "Clear":
            print("No changes. Optimal gameplay conditions.")
        "Rainy":
            print("Rain reduces throw distance by 20%.")
        "Windy":
            print("Wind pushes stones off-course.")