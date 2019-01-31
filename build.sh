#!/usr/bin/env sh
set -e
bindgen wrapper.h -o src/bindings.rs \
	--ctypes-prefix=cty \
	--blacklist-item FP_NAN \
	--blacklist-item FP_INFINITE \
	--blacklist-item FP_ZERO \
	--blacklist-item FP_SUBNORMAL \
	--blacklist-item FP_NORMAL \
	--use-core \
	-- \
	-I $(dirname $(which nspire-gcc))/../include
