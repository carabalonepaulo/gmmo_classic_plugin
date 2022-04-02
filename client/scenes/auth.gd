extends Control


const AuthService := preload("res://plugins/classic/client/services/auth/service.gd")


onready var main = get_tree().root.get_node("main")
onready var auth: AuthService = main.services.auth


func _ready():
    print("from auth scene")
    print(main.services)
    print(auth.get_class())

func _on_sign_in_pressed():
    auth.sign_in("psoreto@gmail.com", "senhazinha")
