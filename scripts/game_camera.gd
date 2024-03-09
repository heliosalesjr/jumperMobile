extends Camera2D

var player: Player = null

var viewport_size

func _ready():
	viewport_size = get_viewport_rect().size
	global_position.x = viewport_size.x
	
	limit_bottom = viewport_size.y
	limit_left = 0
	limit_right = viewport_size.x
	
	
func _process(_delta):
	if player:
		var limit_distance = 420
		if limit_bottom > player.global_position.y + limit_distance:
			limit_bottom = int(player.global_position.y + limit_distance)


func setup_camera(_player: Player):
	if _player:
		player = _player
		
func _physics_process(_delta):
	if player:
		global_position.y = player.global_position.y
