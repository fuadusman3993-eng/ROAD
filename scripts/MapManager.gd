extends Node

var map_data = {
	"Metropolis City": {
		"description": "Expansive urban area with skyscrapers.",
		"min_rank": GlobalState.Rank.PLATINUM,
		"image": "res://assets/ui/maps/metropolis.png"
	},
	"Red Desert": {
		"description": "Rugged, sandy terrain.",
		"min_rank": GlobalState.Rank.DIAMOND,
		"image": "res://assets/ui/maps/desert.png"
	},
	"Jungle Province": {
		"description": "Dense foliage.",
		"min_rank": GlobalState.Rank.CROWN,
		"image": "res://assets/ui/maps/jungle.png"
	},
	"Highways": {
		"description": "Long-distance driving routes with Toll Gates.",
		"min_rank": GlobalState.Rank.ACE,
		"image": "res://assets/ui/maps/highways.png"
	}
}

func get_map_info(map_name: String):
	return map_data.get(map_name, {})
