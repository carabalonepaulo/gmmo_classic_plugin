extends ServerPacketHandler


const SignInRequest := preload("res://plugins/classic/packets/requests/sign_in.gd")
const SignInResponse := preload("res://plugins/classic/packets/responses/sign_in.gd")


var database

func _init(): header = 101

func can_process() -> bool:
    return true

func process(request: SignInRequest) -> void:
    var account_id := Marshalls.utf8_to_base64(request.email)
    var response := SignInResponse.new()
    response.result = yield(database.file_exists("accounts", account_id), "completed")
    reply(response)