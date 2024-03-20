@test fn distance0() void = {
	let p = point { x = 0, y = 0 };
	assert(distance0(&p) == 0.0);

	p.x = 3;
	p.y = 4;
	assert(distance0(&p) == 5.0);

	p.x = 5;
	p.y = 12;
	assert(distance0(&p) == 13.0);
};

@test fn origin() void = {
	assert(origin.x == 0);
	assert(origin.y == 0);
};

@test fn tostr() void = {
	assert("(0, 0)" == tostr(&origin));

	let p = point { x = 3, y = 4 };
	assert("(3, 4)" == tostr(&p));

	p.x = 123;
	p.y = -98;
	assert("(123, -98)" == tostr(&p));
};
