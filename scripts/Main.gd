extends Node

func _ready():
	print("Main Scene Ready. Initializing Pell Grand...")
	# Wait for 1 second to show loading screen then reveal lobby
	await get_tree().create_timer(1.0).timeout
	$LoadingLabel.hide()
	$BackgroundFallback.hide()
	$Lobby.show()
	print("Lobby Revealed.")
