// SPDX-FileCopyrightText: 2024 kurth4cker <kurth4cker@gmail.com>
// SPDX-License-Identifier: GPL-3.0-or-later

use fmt;
use io;
use os;

export fn main() void = {
	print_os(): void;
};

fn print_os() (io::error | void) = {
	fmt::printfln("sysname = {}", os::sysname())?;
	fmt::printfln("release = {}", os::release())?;
	fmt::printfln("version = {}", os::version())?;
};
