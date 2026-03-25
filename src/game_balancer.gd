extends Node

# Balances game mechanics to ensure fair and strategic gameplay

# Adjust stats of skills
func balance_skills():
    print("Balancing skills...")
    SkillManager.skills["fire_stone"].damage_boost = 15 # Reduced from 20 to maintain fairness
    SkillManager.skills["accuracy_boost"].duration = 3 # Boost lasts for 3 turns
    SkillManager.skills["shield"].duration = 1 # Shield lasts for 1 attack

# Adjust weather effects
func balance_weather():
    print("Balancing weather effects...")
    WeatherManager.weather_types["Rainy"].throw_strength_mod = 0.85 # Reduces throw strength by 15%
    WeatherManager.weather_types["Windy"].drift_range = 10 # Limits how much wind affects the stone's path

func apply_balancing():
    balance_skills()
    balance_weather()
    print("All game elements balanced and ready.")