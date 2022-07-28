#[no_mangle]
pub fn echo_string(input: &str) -> (*const u8, usize) {
    let r = input.to_owned() + "b";
    (r.as_ptr(), r.len())
}
