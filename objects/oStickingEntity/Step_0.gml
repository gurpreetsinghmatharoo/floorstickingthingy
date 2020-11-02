/// @description 
if (stickingCheckTimer <= 0) StickingVectors();
else stickingCheckTimer --;

// Move
var _move = movementVector.MultiplyReal(moveSpeed);

if (!CheckGround(_move)) {
	_move.ApplyPosition(self);
}
else {
	repeat (moveSpeed) {
		if (CheckGround(movementVector)) {
			break;
		}
		
		movementVector.ApplyPosition(self);
	}
}