use point;

@test fn length() void = {
	const line: line = (
		point::origin,
		point::point { x = 3.0, y = 4.0 }
	);

	assert(length(&line) == 5.0);
};
