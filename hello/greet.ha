// SPDX-FileCopyrightText: 2024 kurth4cker <kurth4cker@gmail.com>
// SPDX-License-Identifier: GPL-3.0-or-later

use fmt;

// returns a heap allocated string formatted like "hello {}".
// caller must free the return value.
// See [[fmt::asprintf]]
export fn asgreet(to: str = "world") str =
	return fmt::asprintf("hello {}", to);

// generates a greeting and writes it to buffer
// if buffer is not large enough, it aborts
// See [[fmt::bsprintf]]
export fn bsgreet(buf: []u8, to: str = "world") str =
	return fmt::bsprintf(buf, "hello {}", to);
