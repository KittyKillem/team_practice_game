character_attributes = 
{
	hp_max: 20, 
	hp_current: 20,
	xp_max: 10, 
	xp_current: 0,
	strength: 10,
	vitality: 10, 
	agility: 10,
	dexterity: 10
}

animate_forward = false
animate_backward = false

lunge_distance = 20

begin_attack = false
end_attack = false

function attack_enemy(_target)
{
	begin_attack = true
}