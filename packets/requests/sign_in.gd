extends Packet


var email: String
var password: String


func _init(): header = 101

func serialize(writer: StreamPeerBuffer) -> void:
    .serialize(writer)

    writer.put_utf8_string(email)
    writer.put_utf8_string(password)

func deserialize(reader: StreamPeerBuffer) -> void:
    .deserialize(reader)

    email = reader.get_utf8_string()
    password = reader.get_utf8_string()
