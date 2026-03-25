extends Node

# Applies visual and gameplay weather effects

func apply_effect(player, throw_strength):
    match current_weather:
        "Rainy":
            var reduced_strength = throw_strength * 0.8
            print("Throw strength reduced to", reduced_strength)
            return reduced_strength
        "Windy":
            print("Add drift towards windy angle.")
