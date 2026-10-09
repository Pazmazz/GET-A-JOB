object_tag = CHUNK;

// Origin point for the chunk which is the middle
origin_x = x + 256;
origin_y = y + 256;

// Ensures carts are not created endlessly
carts_spawned = false;

// When the chunk is first loaded in
first_load = false;

// After the chunk is first loaded in, keep it loaded until the player moves way
stay_loaded = false;

// Failsafe to keep the chunk from reloading every step, causing multiple customers to spawn at once
can_reload = true;

// If the chunk is loaded by the player or not
loaded = false;

// If the chunk can spawn a customer or not
can_spawn_customer = true;

// The weight of the chunk that determins it's cart spawn rates
weight = assign_chunk_weight(origin_x, origin_y);
log("[MapGen] Chunk at " + string(origin_x) + ", " + string(origin_y) + " assigned weight: " + string(weight));

count = get_cart_spawn_count(weight);
log("[MapGen] Chunk at " + string(origin_x) + ", " + string(origin_y) + " has max cart spawn of: " + string(count));
