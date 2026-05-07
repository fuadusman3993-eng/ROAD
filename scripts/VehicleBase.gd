extends Node3D
class_name VehicleBase

# Core Stats
@export var fuel_capacity: float = 100.0
@export var fuel_consumption_rate: float = 0.05
var current_fuel: float = 100.0

@export var max_speed: float = 220.0 # KM/H
var current_speed: float = 0.0
var travel_distance: float = 0.0

# Contract Rules
var active_contract_type: String = "" # "Delivery" or "HighSpeed"
var contract_target_speed: float = 200.0
var contract_target_distance: float = 200.0
var contract_penalty_active: bool = false

func _physics_process(delta):
	if current_speed > 0:
		consume_fuel(delta)
		update_distance(delta)
		check_contract_rules()

func consume_fuel(delta):
	var consumption = (current_speed / max_speed) * fuel_consumption_rate * delta
	current_fuel = max(0, current_fuel - consumption)
	if current_fuel <= 0:
		engine_stop()

func update_distance(delta):
	travel_distance += (current_speed * delta) / 3600.0 # Convert to KM

func check_contract_rules():
	if active_contract_type == "HighSpeed":
		if travel_distance >= contract_target_distance:
			if current_speed < contract_target_speed:
				apply_penalty("Failed to maintain speed target")
			else:
				complete_contract()

func apply_penalty(reason: String):
	print("Penalty Applied: ", reason)
	GlobalState.add_points(-5) # Custom penalty logic
	contract_penalty_active = true

func complete_contract():
	print("Contract Success!")
	GlobalState.add_points(15)
	active_contract_type = ""

func engine_stop():
	print("Out of fuel!")
	current_speed = 0
