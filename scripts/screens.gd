extends CanvasLayer

@onready var console = $Debug/ConsoleLog

# Called when the node enters the scene tree for the first time.
func _ready():
	
	console.visible = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_toggle_console_pressed():
	console.visible = !console.visible
