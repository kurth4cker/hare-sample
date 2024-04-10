use fmt;
use io;

export fn main() void = {
	sayhello();
};

fn sayhello(to: str = "world") void = {
	const result = fmt::printfln("hello {}", to);
	match (result) {
	case => yield;
	};
};
