extends Node

func _ready():
	# Test: MODE_ENCRYPTED | algo.save | Other folder
	#
	
	Persistence.set_mode(Persistence.MODE_ENCRYPTED)
	Persistence.set_folder_name("OtherFolder")
	print("get_mode(): ", Persistence.get_mode())
	
	var data = Persistence.get_data("algo")
	print("get_data(): ", data)
	
	data["Diccionario"] = {
		Data1x = "Value1x",
		Data2x = "Value2x"
	}
	data["Nuevo2"] = "Nueva Datax2"
	
	Persistence.save_data("algo")
	print("save_data(): ", data)