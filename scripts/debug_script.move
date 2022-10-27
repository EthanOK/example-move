// sources/debug_script.move
script {
    use std::debug;
    fun debug_script(account: signer) {
        debug::print(&account)
    }
}

// move-cli sandbox run scripts/debug_script.move --signers 0xf