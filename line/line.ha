use point;

export type line = (point::point, point::point);

export fn length(ln: *line) f64 = {
	return point::distance(&ln.0, &ln.1);
};
