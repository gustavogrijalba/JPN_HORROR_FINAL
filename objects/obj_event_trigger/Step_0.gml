if (!found_notebook && place_meeting(x, y, obj_player)) {
    found_notebook = true;

    var found_dialog = [
        { name: "Naru", msg: "It looks like someone's notebook..." },
        { name: "Naru", msg: "The pages are torn, but I can still make out some of it." },
        { name: "Hotaro", msg: "I watched them pass my window again today." },
        { name: "Hotaro", msg: "The way they laughed... like nothing could ever reach them." },
        { name: "Hotaro", msg: "I imagined pressing a knife to the back of their neck, just to see if they'd stop." },
        { name: "Hotaro", msg: "They wouldn't laugh anymore." },
        { name: "Hotaro", msg: "Maybe then they'd understand what it means to be alone." },
        { name: "Hotaro", msg: "I think I'm becoming something else." },
        { name: "Hotaro", msg: "Something that waits between the walls." },
        { name: "Hotaro", msg: "When I hang, I want my shadow to face the door." }
    ];
    
    create_dialog(found_dialog);
}

if (global.notebook_found) {
    instance_destroy();
}