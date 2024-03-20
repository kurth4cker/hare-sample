use fmt;

type point = struct {
	x: int,
	y: int,
};

fn print_point(pnt: nullable *point) void = {
	match (pnt) {
	case null =>
		fmt::println("(null)")!;
	case let pnt: *point =>
		fmt::printfln("({}, {})", pnt.x, pnt.y)!;
	};
};
