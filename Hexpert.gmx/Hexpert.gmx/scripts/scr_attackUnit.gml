attacker = argument[0];
defender = argument[1];

attacker.hasAttacked = 1;
attacker.hasMoved = 1;

show_debug_message("VidaDEF: " + string_format(defender.hp,3,3))
show_debug_message("DañoATC: " + string_format(attacker.dmg,3,3))


defender.hp -= attacker.dmg;

// Si HP =< 0, la unidad muere
if (defender.hp <= 0){
    with (defender){
        scr_unitDeath();
    }
}
