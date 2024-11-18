extends Node2D

@onready var shutter: TextureButton = $Shutter
@onready var camera_2d: Camera2D = $Camera2D
var captured_sprite: Sprite2D

func _ready():
	# Create the sprite that will hold our captured image
	captured_sprite = Sprite2D.new()
	add_child(captured_sprite)
	captured_sprite.z_index = 100
	captured_sprite.visible = false
	
	# Connect the button's pressed signal
	shutter.pressed.connect(_on_shutter_pressed)

func _on_shutter_pressed():
	capture_and_process()

func capture_and_process():
	var viewport = get_viewport()
	await get_tree().process_frame
	
	var viewport_texture = viewport.get_texture()
	var image = viewport_texture.get_image()
	
	# Process the image to be black and white with high contrast
	for y in range(image.get_height()):
		for x in range(image.get_width()):
			var pixel = image.get_pixel(x, y)
			var gray = pixel.r * 0.299 + pixel.g * 0.587 + pixel.b * 0.114
			var threshold = 0.5
			var contrast = 1.5
			gray = (gray - threshold) * contrast + threshold
			gray = clamp(gray, 0.0, 1.0)
			image.set_pixel(x, y, Color(gray, gray, gray))
	
	var texture = ImageTexture.create_from_image(image)
	
	captured_sprite.texture = texture
	captured_sprite.position = Vector2(350, 350)
	captured_sprite.scale = Vector2(0.75, 0.75)
	captured_sprite.visible = true
