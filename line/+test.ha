use point;

@test fn length() void = {
	const line: line = (
		point::origin,
		(3.0, 4.0),
	);

	assert(length(&line) == 5.0);
};
