/// @description 
room_speed = 60;

// Properties
moveSpeed = 4;

// Vectors
movementVector = new Vector2(choose(-1, 1), 0);
gravityVector = new Vector2(0, 1); // There's no gravity so this just points to the ground

// Sticking check
stickingCheckTimer = -1;