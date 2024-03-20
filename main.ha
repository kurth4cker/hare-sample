use fmt;
use point;

export fn main() void = {
	let point = point::origin;
	fmt::println(point::tostr(&point))!;

	point.x = 3;
	point.y = 4;
	fmt::println(point::tostr(&point))!;

	point.x = 5;
	point.y = 12;
	fmt::println(point::tostr(&point))!;
};
