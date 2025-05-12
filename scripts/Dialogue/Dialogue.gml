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
    { name: "Naru", msg: "Hi, " + get_player_name() + ". My name is Aki."},
    { name: "Hotaro", msg: "It's been so long..."},
    { name: "Aki", msg: "You have the kind of face I used to know."}
];

hotaro = [
    { name: "Naru", msg: "Hi there.. I was wonderi..."},
    { name: "Hotaro", msg: "Uhm.. Uhm.."},
    { name: "Hotaro", msg: "Uhm....."},
    { name: "Naru", msg: "Sorry, are you okay..?"},
    { name: "Naru", msg: "Sorry I've just been lost here, I'm trying to fi- "},
    { name: "Hotaro", msg: "LEAVE ME ALONE"}
]

hotaro_room = [
    { name: "Naru", msg: "Sorry for coming in... are you alright...? Why did you just run away like that...?"},
    { name: "Naru", msg: "I was just wandering through the woods and just... ended up here. I dont even remember arrving here"},
    { name: "Naru", msg: "It just got dark all of a sudden... Do you know how I can get back? My family must be worried for me"},
    { name: "Hotaro", msg: "......"},
    { name: "Hotaro", msg: ".............."},
    { name: "Hotaro", msg: "They won't have to worry about you anymore...."}
]

