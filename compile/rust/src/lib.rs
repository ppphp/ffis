extern crate libc;
use libc::c_char;
use std::ffi::{CStr, CString};

#[no_mangle]
pub extern "C" fn add(a: i64, b: i64) -> i64 {
    a + b
}

#[no_mangle]
pub extern "C" fn hello(s: *const c_char) -> *const c_char {
    let c_str =
        unsafe{
            assert!(!s.is_null());
            CStr::from_ptr(s)
        };
    let r_str = c_str.to_str().unwrap().to_string();
    println!("{}",r_str);
    CString::new(r_str + " world").unwrap().into_raw()
}
