use fmt;
use io;
use os;

export fn main() void = {
	match (print_os()) {
	case => yield;
	};
};

fn print_os() (io::error | void) = {
	fmt::printfln("sysname = {}", os::sysname())?;
	fmt::printfln("release = {}", os::release())?;
	fmt::printfln("version = {}", os::version())?;
};
