use fmt;
use math;

// represents a point
export type point = (f64, f64);

// origin of the area
export const origin = (0.0, 0.0);

// Calculate distance of two points
export fn distance(p1: *point, p2: *point) f64 = {
	const x = p1.0 - p2.0;
	const y = p1.1 - p2.1;

	return math::sqrtf64(x * x + y * y);
};

// return string representation of given point
// return value is heap allocated. so caller should free it
export fn tostr(p: *point) const str = {
	return fmt::asprintf("({}, {})", p.0: f64, p.1: f64);
};
