@test fn distance() void = {
	const origin = (0.0, 0.0);
	let p1 = (-3.0, -4.0);
	let p2 = (3.0, 4.0);

	assert(distance(&p1, &p2) == 10.0);
	assert(distance(&p1, &origin) == 5.0);
	assert(distance(&p2, &origin) == 5.0);

	p1 = (5.0, 12.0);
	assert(distance(&p1, &origin) == 13.0);
};

@test fn origin() void = {
	assert(origin.0 == 0.0);
	assert(origin.1 == 0.0);
};

@test fn tostr() void = {
	assert("(0, 0)" == tostr(&origin));

	let p = (3.0, 4.0);
	assert("(3, 4)" == tostr(&p));

	p.0 = 123.0;
	p.1 = -98.0;
	assert("(123, -98)" == tostr(&p));
};
