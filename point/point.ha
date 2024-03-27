use fmt;
use math;
use types;

// represents a point
export type point = struct {
	x: f64,
	y: f64,
};

// origin of the area
export const origin = point {
	x = 0.0,
	y = 0.0,
};

// Calculate distance of two points
export fn distance(p1: *point, p2: *point) f64 = {
	const x = p1.x - p2.x;
	const y = p1.y - p2.y;

	return math::sqrtf64(x * x + y * y);
};

// return string representation of given point
// return value is heap allocated. so caller should free it
export fn tostr(p: *point) const str = {
	return fmt::asprintf("({}, {})", p.x: f64, p.y: f64);
};
