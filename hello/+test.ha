// SPDX-FileCopyrightText: 2024 kurth4cker <kurth4cker@gmail.com>
// SPDX-License-Identifier: GPL-3.0-or-later

use strings;
use fmt;

@test fn asgreet() void = {
	let greeting: str = asgreet();
	assert(streq(greeting, "hello world"));
	free(greeting);

	greeting = asgreet("kurth4cker");
	defer free(greeting);
	assert(streq(greeting, "hello kurth4cker"));
};

@test fn bsgreet() void = {
	const buf: []u8 = alloc([0...], 16): []u8;
	defer free(buf);

	const ret1: str = bsgreet(buf);
	assert(streq(ret1, "hello world"));

	const ret2: str = bsgreet(buf, "kurth4cker");
	assert(streq(ret2, "hello kurth4cker"));
};

fn streq(s1: str, s2: str) bool =
	return strings::compare(s1, s2) == 0;
