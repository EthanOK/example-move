//sources/debug_script.move
script {
    use std::debug;
    const ONE: u64 = 1;
    // bool literals (true, false)
    // u64 literals (e.g., 10, 58)
    // address literals (e.g., 0x12, 0x0000000000000000000000000000000f)
    // hexadecimal strings (e.g., 'x"0012"' will parse as the vector<u8> value [00, 12])
    // ASCII strings (e.g., 'b"hi"' will parse as the vector<u8> value [68, 69])
    fun debug_script(x:u64 , y:bool ,addr:address) {
        let sum = x + ONE;
        debug::print(&sum);
        debug::print(&y);
        debug::print(&addr);
    }
}

// move-cli sandbox run scripts/debug_script2.move --args 33 true 0xf
