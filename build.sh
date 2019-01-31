#!/usr/bin/env sh
set -e
bindgen wrapper.h -o src/bindings.rs \
	--ctypes-prefix=cty \
	--blacklist-item FP_NAN \
	--blacklist-item FP_INFINITE \
	--blacklist-item FP_ZERO \
	--blacklist-item FP_SUBNORMAL \
	--blacklist-item FP_NORMAL \
	--blacklist-function abort \
	--blacklist-function exit \
	--use-core \
	-- \
	-I $(dirname $(which nspire-gcc))/../include
