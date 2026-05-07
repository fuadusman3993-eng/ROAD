extends Node

# Rank Constants
enum Rank { PLATINUM, DIAMOND, CROWN, ACE, CONQUEROR }

# Player Stats
var player_rank = Rank.PLATINUM
var player_points = 0
var current_map = "Metropolis City"

# Matchmaking Config
const MIN_PLAYERS = 45
const MAX_PLAYERS = 50

func add_points(points: int):
	player_points += points
	check_rank_advancement()

func check_rank_advancement():
	var old_rank = player_rank
	
	if player_points >= 1000: player_rank = Rank.CONQUEROR
	elif player_points >= 800: player_rank = Rank.ACE
	elif player_points >= 600: player_rank = Rank.CROWN
	elif player_points >= 400: player_rank = Rank.DIAMOND
	
	if player_rank > old_rank:
		if player_rank == Rank.CONQUEROR:
			add_points(10) # Bonus for reaching Conqueror
		print("Rank Up! New Rank: ", player_rank)

# Logic for dynamic player limits based on vehicles
func get_allowed_player_count(total_cars: int, active_cars: int) -> int:
	if active_cars <= total_cars / 2:
		return 40 # Standard high limit
	else:
		return 25 # Reduced limit for performance
