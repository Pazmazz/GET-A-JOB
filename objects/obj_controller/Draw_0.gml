// Draw completion meter
draw_healthbar(340, 50, 940, 100, (global.carts_returned / total_carts) * 100, c_black, c_black, c_lime, 0, true, true);
draw_text(950, 70, string((global.carts_returned / total_carts) * 100) + "%");

// Draws boss anger meter
draw_set_colour(c_red);
draw_text(20, 580, "Boss Anger Meter");
draw_healthbar(20, 600, 180, 620, (global.boss_anger / max_boss_meter) * 100, c_black, c_red, c_red, 0, true, true);
draw_text(190, 600, string((global.boss_anger / max_boss_meter) * 100) + "%");

draw_set_colour(c_white);
