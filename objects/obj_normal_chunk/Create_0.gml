object_tag = CHUNK;

// Origin point for the chunk which is the middle
origin_x = x + 256;
origin_y = y + 256;

// The weight of the chunk that determins it's cart spawn rates
weight = assign_chunk_weight(origin_x, origin_y);
log("[MapGen] Chunk at " + string(origin_x) + ", " + string(origin_y) + " assigned weight: " + string(weight));

count = get_cart_spawn_count(weight);
log("[MapGen] Chunk at " + string(origin_x) + ", " + string(origin_y) + " has max cart spawn of: " + string(count));
