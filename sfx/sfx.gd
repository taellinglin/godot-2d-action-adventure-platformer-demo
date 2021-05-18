extends Node
var MusicVolume
var EffectsVolume
func _ready():
	MusicVolume = 1.0
	EffectsVolume = 1.0
	var start_sfx = AudioStreamPlayer.new()
	start_sfx.stream = load("res://sfx/start.wav")
	start_sfx.stream.set_loop(false)
	add_child(start_sfx)
	start_sfx.set_volume_db(linear2db(MusicVolume))
	
	var cursor_sfx = AudioStreamPlayer.new()
	cursor_sfx.stream = load("res://sfx/cursor.wav")
	cursor_sfx.stream.set_loop(false)
	add_child(cursor_sfx)
	cursor_sfx.set_volume_db(linear2db(MusicVolume))
	
	var cancel_sfx = AudioStreamPlayer.new()
	cancel_sfx.stream = load("res://sfx/cancel.wav")
	cancel_sfx.stream.set_loop(false)
	add_child(cancel_sfx)
	cancel_sfx.set_volume_db(linear2db(MusicVolume))
	
	var select_sfx = AudioStreamPlayer.new()
	select_sfx.stream = load("res://sfx/select.wav")
	select_sfx.stream.set_loop(false)
	add_child(select_sfx)
	select_sfx.set_volume_db(linear2db(MusicVolume))
	pass
func _process(delta):
	pass
