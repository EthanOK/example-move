module ethan::Storage{
    use std::signer as Signer;
    struct Storage<T:store> has key{
        val:T
    }

    public fun store<T:store>(account:&signer, val:T){
        let addr = Signer::address_of(account);
        assert!(!exists<Storage<T>>(addr), 101);
        let to_store = Storage{val};
        move_to<Storage<T>>(account,to_store);
    }
   // If the resource needs to be taken out inside the function, "acquires"
    public fun get_val<T:store>(account:&signer):T acquires Storage {
        let addr = Signer::address_of(account);
        assert!(exists<Storage<T>>(addr), 102);
        let Storage{val} = move_from<Storage<T>>(addr);
        val
    }
}