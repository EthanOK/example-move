script{
    use std::debug as Debug;
    // use std::signer as Signer;
    use ethan::collection;
    fun main(account:signer){ 
        collection::create_collecton(&account);
        let success = collection::exists_collecton(&account);
        Debug::print(&success);
        collection::add_item(&account);
        let size = collection::size(&account);
        Debug::print(&size);
    }
}

// move-cli sandbox run scripts/resource_test.move --args 0x668