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
    { name: "Aki", msg: "Hi, " + get_player_name() + ". My name is Aki." },
    { name: "Aki", msg: "It's been so long since anyone walked through this village." },
    { name: "Aki", msg: "You have the kind of face I used to know." },
    { name: "Aki", msg: "The wind doesn't speak like it used to, but sometimes at night—if you're quiet, very quiet—you can hear things breathing where no one should be, pressing their weight against the walls, waiting for something they forgot how to want." },
    { name: "Aki", msg: "You should be careful, though. Some things around here don't stay quiet for long." }
];

