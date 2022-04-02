extends Service


const Settings := preload("res://plugins/classic/settings.tres")
const ClientService := preload("res://client/services/client/service.gd")
const SignInRequest := preload("res://plugins/classic/packets/requests/sign_in.gd")


var tree: SceneTree
var client: ClientService


func start() -> void:
    .start()

    if Settings.first_scene:
        tree.change_scene("res://plugins/classic/client/scenes/auth.tscn")

func sign_in(email: String, password: String) -> void:
    var request := SignInRequest.new()
    request.email = email
    request.password = password.sha256_text()

    client.send(request)
