// SPDX-FileCopyrightText: 2024 kurth4cker <kurth4cker@gmail.com>
// SPDX-License-Identifier: GPL-3.0-or-later

use fmt;

export fn main() void = {
	sayhello();
};

fn sayhello(to: str = "world") void = {
	fmt::printfln("hello {}", to): void;
};
