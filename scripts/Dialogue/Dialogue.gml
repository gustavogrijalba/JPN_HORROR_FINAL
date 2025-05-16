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
    { name: "Naru", msg: "Hi.... My name is Naru. Do you know where I am?"},
    { name: "Naru", msg: "It's just... I've gotten lost here and I don't seem to know where I am."},
    { name: "Aki", msg: "You have the kind of face I used to know....."},
    { name: "Naru", msg: "......."},
    { name: "Aki", msg: "This is the village of Sagu.... though that's really all you need to know."},
    { name: "Aki", msg: "This village used to be a hub of farmers and craftsmen... families... "},
    { name: "Aki", msg: "Though.... the village just went quiet one day"},
    { name: "Naru", msg: ".........."},
    { name: "Aki", msg: "The air got thicker.... the soil soured and lost its color.... noise of families into whispers... and then into nothing."},
    { name: "Aki", msg: "It's as if nobody was really here at all...  "},
    { name: "Naru", msg: "...."},
    { name: "Aki", msg: "But Sagu's still here... what's left of it anyway."},
    { name: "Aki", msg: "Anyway... you can come follow me into my home if you need help finding your way."},
    { name: "Aki", msg: "I have something you might need."},
    { name: "Aki", msg: "And please, don't pay Hotaro any mind.... he isn't of this world.."},
    { name: "Naru", msg: "Okay....."},
    { name: "Naru", msg: "Thank you..."}
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
    { name: "Hotaro", msg: "They won't have to worry about you anymore...."},
    { name: "Naru", msg: "Excuse me?"},
    { name: "Hotaro", msg: "......."},
    { name: "Hotaro", msg: "Sagu is a place that CONSUMES people... I've seen it... they didn't believe me..... Sagu isn't a real place.... it's purgatory... hell... it's not real... it's not real"}, 
    { name: "Hotaro", msg: "They called me crazy.... they didn't understand....."},
    { name: "Hotaro", msg: "Maybe they aren't people either......."},
    { name: "Naru", msg: "Hotaro? Are you okay....?"},
    { name: "Hotaro", msg: "......."},
    { name: "Hotaro", msg: "Don't trust that demon Aki...... has she gotten you yet?? I can see your eyes...."},
    { name: "Hotaro", msg: "YOU'VE SEEN HER HAVEN'T YOU??"},
    { name: "Hotaro", msg: "YOU'LL BE JUST LIKE THEM.... CONSUMED BY SHADOWS... THEY WON'T TELL YOU THE TRUTH"},
    { name: "Hotaro", msg: "My notebooks... they're scattered... they took them from me... hid them... but they're still out there... waiting..."},
    { name: "Hotaro", msg: "I wrote it down... before I... tried to leave."},
    { name: "Hotaro", msg: "If you want to see Sagu for what it is... find them..."},
    { name: "Hotaro", msg: "Leave now and look for them.... find the truth... or don't.... it's the same outcome anyway...."}
]

aki_room_dialog = [
    { name: "Aki", msg: "Make yourself at home " + get_player_name() + "...."},
    { name: "Aki", msg: "Excuse me... I mean Naru, please, it's been some time since I've last seen a guest"},
    { name: "Aki", msg: "Quite honestly, if Sagu still inhabited anyone... maybe you'd be the talk of the village..."},
    { name: "Aki", msg: "But... it doesn't, does it...."},
    { name: "Naru", msg: "I'm not entirely sure what you mean..."},
    { name: "Aki", msg: "No, though I am sure Sagu is happy to have you here..."},
    { name: "Aki", msg: "You know, when Sagu still had a population, people would often visit here to look upon my famous looking glass..... they said it would always show a reflection of my beauty..."},
    { name: "Aki", msg: "Isn't that wonderful... even if you look upon it yourself you would see not your own reflection but a reflection of my own beauty...my own soul..."},
    { name: "Aki", msg: "Go on Naru, take a look for yourself.... I'd like you to see my beauty...."},
    { name: "Naru", msg: "Sorry, but how would this help me...?"},
    { name: "Aki", msg: "Oh Naru... It's polite to look, Naru... especially when your host invites you."}
]

post_mirror_dialog = [
    { name: "- - A K I - -", msg: "LEAVE......"},
    { name: "- - A K I - -", msg: "......"}
]

