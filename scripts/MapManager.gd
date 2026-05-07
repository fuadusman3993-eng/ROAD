extends Node

var map_data = {
	"City": {
		"description": "Large open urban environment with skyscrapers.",
		"min_rank": GlobalState.Rank.PLATINUM,
		"image": "res://assets/ui/maps/metropolis.png"
	},
	"Desert": {
		"description": "Wide open desert terrain.",
		"min_rank": GlobalState.Rank.DIAMOND,
		"image": "res://assets/ui/maps/desert.png"
	},
	"Forest": {
		"description": "Jungle and dense green environment.",
		"min_rank": GlobalState.Rank.CROWN,
		"image": "res://assets/ui/maps/jungle.png"
	},
	"Highway": {
		"description": "Large road and highway map with Toll Gates.",
		"min_rank": GlobalState.Rank.ACE,
		"image": "res://assets/ui/maps/highways.png"
	}
}

func get_map_info(map_name: String):
	return map_data.get(map_name, {})
