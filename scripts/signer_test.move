script{
    use std::debug as Debug;
    use std::signer as Signer;
    fun main(s:signer, s0:signer){
        let addre = Signer::address_of(&s);
        Debug::print(&addre);
        let add_refer = Signer::borrow_address(&s0);
        Debug::print(add_refer);
    }
}

// move-cli sandbox run scripts/signer_test.move --args 0x777 0x555