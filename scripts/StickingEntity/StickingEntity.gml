
#macro CELLSIZE 40

function StickingVectors () {
	// To skip, you have to be grounded and have no obstacle
	var _pos = new Vector2(x, y);
	var _grounded = CheckGround(gravityVector.MultiplyReal(CELLSIZE));
	var _obstacle = CheckGround(movementVector.MultiplyReal(1));
	
	if (_grounded && !_obstacle) return 0;
	
	// Find new ground
	var _gravityAngle = gravityVector.GetAngle();
	var _angleIncrement = 45;
	
	for (var i = 1; i <= 3; i ++) {
		for (var j = -1; j <= 1; j += 2) {
			var _angle = _gravityAngle + (_angleIncrement * i) * j;
			
			var _newVec = new Vector2(
				round(dcos(_angle)),
				round(-dsin(_angle))
			);
			
			// Found ground
			if (CheckGroundPoint(_pos.AddVector2(_newVec.MultiplyReal(CELLSIZE)))) {
				// New gravity vector
				var _newGravVec = _newVec.SubtractVector2(gravityVector);
				
				// New movement vector
				var _relAngle = movementVector.GetAngle() - _gravityAngle;
				var _newAngle = _newGravVec.GetAngle() + _relAngle;
				var _newMoveVec = new Vector2(dcos(_newAngle), -dsin(_newAngle));
				
				// Obstacle?
				if (CheckGround(_newMoveVec.MultiplyReal(CELLSIZE))) {
					continue;
				}
				
				gravityVector = _newGravVec;
				movementVector = _newMoveVec;
				
				// Timer
				stickingCheckTimer = 10;
				
				// End
				return 1;
			}
		}
	}
}