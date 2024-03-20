export fn main() void = {
	let point: point = point { x = 10, y = 20, };
	print_point(null);
	print_point(&point);
};
