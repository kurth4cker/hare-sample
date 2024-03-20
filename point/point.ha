use fmt;
use math;

// represents a point
export type point = struct {
	x: int,
	y: int,
};

// origin of the area
export const origin = point {
	x = 0,
	y = 0,
};

// calculate distance of point from origin: sqrt(x^2 + y^2)
export fn distance0(pnt: *point) f64 = {
	const x = pnt.x: f64;
	const y = pnt.y: f64;

	return math::sqrtf64(x * x + y * y);
};

// return string representation of given point
// return value is heap allocated. so caller should free it
export fn tostr(p: *point) const str = {
	return fmt::asprintf("({}, {})", p.x, p.y);
};
