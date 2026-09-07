global.cart_stack = 0;
global.debug = false;
total_carts = get_cart_amount();
global.carts_returned = 0;
win_condition = get_win_amount();

init_boss_meter();
global.boss_anger = 0;
max_boss_meter = 100;