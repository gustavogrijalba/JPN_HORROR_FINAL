if (place_meeting(x, y, obj_player)) {
    switch (notebook_id) {
        //use these cases so that each child notebook can inherit this and
        //override depending on their id
        case 1: global.notebook_1_found = true; break;
        case 2: global.notebook_2_found = true; break;
        case 3: global.notebook_3_found = true; break;
    }

    //check if all notebooks are found, if so, we can now unlock
    //the entire dialog that Hotaro will reveal in his notebooks
    if (global.notebook_1_found && global.notebook_2_found && global.notebook_3_found) {
        global.notebook_dialog_unlocked = true;
    }

    //the entire dialog unlocked by finding each notebook
    if (global.notebook_dialog_unlocked) {
        var full_dialog = [
            { name: "Naru", msg: "All three pieces... it makes sense now." },
            { name: "Naru", msg: "It looks like Hotaro's daily thoughts... or what's left of them" },
            { name: "Naru", msg: "The pages are torn, but I can still make out some of it." },
            { name: "Hotaro", msg: "I watched them pass my window again today....." },
            { name: "Hotaro", msg: "Their shadows blending in with the wretchedness of Sagu's air... their empty faces pretending to smile... " },
            { name: "Hotaro", msg: "I know they don't feel anything.... they keep itching closer and closer to me... taunting me.... they aren't people... they're demons" },
            { name: "Hotaro", msg: "Aki has been isnide my walls again..... I know it...." },
            { name: "Hotaro", msg: "She laughs as I lose my bits of sanity..... her face sometimes appearing on the wall.... no longer hiding her wretched visage... she knows she has me trapped" },
            { name: "Hotaro", msg: "I see the static behind here eyes... where light doesn't reflect... empty holes of pich black darknes.... " },
            { name: "Hotaro", msg: "She thinks she can keep me trapped for longer.... these people think they can infect me and strip me of my humanity..... they're wrong" },
            { name: "Hotaro", msg: "I won't let them take me... I don't want to go where they reside.... I know they used Sagu to entrap me here but.... I won't let them....When I hang, I want my shadow to face the door.... I want Aki to see...." }
        ];
        create_dialog(full_dialog);

    } else {
        //use switch cases as nested if statements won't work the way intended
        //this is because using flags will be useless if they'll always be true
        switch (notebook_id) {
            case 1:
                var dialog_1 = [
                    { name: "Naru", msg: "This seems to be the beginning of the notebook Hotaro mentioned..." },
                    { name: "Naru", msg: "It seems indecipherable.... and the cover is stained a weird.. I don't know.." },
                    { name: "Naru", msg: "It's dry... Black, but almost a crimson red under it..." },
                    { name: "Naru", msg: "It seems I need to find more of the notebook to really understand what Hotaro was warning me about." }
                ];
                create_dialog(dialog_1);
                break;

            case 2:
                var dialog_2 = [
                    { name: "Naru", msg: "Another piece of the notebook Hotaro was telling me about." },
                    { name: "Naru", msg: "Some of the pages are just random scribbles... I wonder what hidden message he thinks I'll find in this unorganized mess." }
                ];
                create_dialog(dialog_2);
                break;

            case 3:
                var dialog_3 = [
                    { name: "Naru", msg: "The final piece...." },
                    { name: "Naru", msg: "Let's see." }
                ];
                create_dialog(dialog_3);
                break;
        }
    }
    //destroy itself once the dialog occurs
    instance_destroy();
}

