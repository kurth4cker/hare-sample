@test fn distance() void = {
	const origin = point { x = 0.0, y = 0.0 };
	let p1 = point { x = -3.0, y = -4.0 };
	let p2 = point { x = 3.0, y = 4.0 };

	assert(distance(&p1, &p2) == 10.0);
	assert(distance(&p1, &origin) == 5.0);
	assert(distance(&p2, &origin) == 5.0);

	p1 = point { x = 5.0, y = 12.0 };
	assert(distance(&p1, &origin) == 13.0);
};

@test fn origin() void = {
	assert(origin.x == 0.0);
	assert(origin.y == 0.0);
};

@test fn tostr() void = {
	assert("(0, 0)" == tostr(&origin));

	let p = point { x = 3.0, y = 4.0 };
	assert("(3, 4)" == tostr(&p));

	p.x = 123.0;
	p.y = -98.0;
	assert("(123, -98)" == tostr(&p));
};
