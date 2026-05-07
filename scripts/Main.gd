func _ready():
	# Force True Immersive Full-Screen
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	
	print("Main Scene Ready. Initializing Pell Grand...")
	# Wait for assets to settle
	await get_tree().create_timer(1.0).timeout
	$LoadingLayer.hide()
	$LobbyLayer.show()
	print("Lobby Revealed.")
