#![no_std]
#![allow(non_upper_case_globals)]
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
extern "C" {
	pub fn abort() -> !;
	pub fn exit(__status: cty::c_int) -> !;
}
include!("bindings.rs");
