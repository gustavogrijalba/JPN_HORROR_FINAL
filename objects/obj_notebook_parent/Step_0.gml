if (place_meeting(x, y, obj_player)) {
    switch (notebook_id) {
        case 1: global.notebook_1_found = true; break;
        case 2: global.notebook_2_found = true; break;
        case 3: global.notebook_3_found = true; break;
    }

    //check if all notebooks are connected
    if (global.notebook_1_found && global.notebook_2_found && global.notebook_3_found) {
        global.notebook_dialog_unlocked = true;
    }

    //unlock dialog for the notebook
    if (global.notebook_dialog_unlocked) {
        var full_dialog = [
            { name: "Naru", msg: "All three pieces... it makes sense now." },
            { name: "Naru", msg: "It looks like Hotaro's daily thoughts..." },
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
        create_dialog(full_dialog);
    } else {
        var vague_dialog = [
            { name: "Naru", msg: "Something's written, but I can't make it out yet. It seems more notebooks are needed to complete the puzzle.." }
        ];
        create_dialog(vague_dialog);
    }

    instance_destroy();
}
