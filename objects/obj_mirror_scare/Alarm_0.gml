//destroy the controller once the image is done being shown
instance_destroy();
//flag to ensure the variable is now set
global.mirror_scare_occured = true;
//fix for state checking
global.refresh_aki_dialog = true;