object_tag = CHUNK; 

// Set player spawn to the middle of the chunk
spawn_x = x + 256;
spawn_y = y + 256;

// Spawn player at the spawn corrds
log("[MapGen] Spawning in player...");
instance_create_layer(spawn_x, spawn_y, "Player", obj_player);
log("[MapGen] Player spawned at positiion " + string(obj_player.x) + ", " + string(obj_player.y));

// Create spawn marker at the center of the chunk for distance calculations
instance_create_layer(spawn_x, spawn_y, "Utility", obj_spawn_marker);