function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0,0,0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

function get_player_name() {
    var name;
    if (os_type == os_windows) {
        name = environment_get_variable("USERNAME");
    } else if (os_type == os_macosx) {
        name = environment_get_variable("USER");
    } else {
        name = "player";
    }

    if (name == "") name = "player";
    return name;
}

welcome = [
    { name: "Isao", msg: "Hi, " + get_player_name() + ". My name is Aki."},
    { name: "Hotaro", msg: "It's been so long..."},
    { name: "Aki", msg: "You have the kind of face I used to know."}
];

