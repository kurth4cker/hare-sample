// SPDX-FileCopyrightText: 2024 kurth4cker <kurth4cker@gmail.com>
// SPDX-License-Identifier: GPL-3.0-or-later

use crypto::sha256;
use encoding::hex;
use fmt;
use fs;
use hash;
use io;
use os;

export fn main() void = {
	if (len(os::args) != 2)
		fmt::fatalf("usage: {} <input>", os::args[0]);

	const path = os::args[1];
	const file = match (os::open(path)) {
	case let file: io::file =>
		yield file;
	case let err: fs::error =>
		fmt::fatalf("error opening {}: {}", path, fs::strerror(err));
	};
	defer io::close(file): void;

	const hash = sha256::sha256();
	io::copy(&hash, file)!;

	let sum: [sha256::SZ]u8 = [0...];
	hash::sum(&hash, sum);

	fmt::println(hex::encodestr(sum)): void;
};
