module ethan::collection{
    use std::vector as Vector;
    use std::signer as Signer;
    struct Item has store, drop{}
    // Define resource
    struct Collection has key, store{
        items:vector<Item>
    }

    // Create resource
    public fun create_collecton(account:&signer){
        // move_to<T>(&signer,T)
        move_to<Collection>(account,Collection{
            items:Vector::empty<Item>()
        });

    }

    // select resource exist?
    public fun exists_collecton(account:&signer):bool{
        // get signer address
        let add = Signer::address_of(account);
        exists<Collection>(add)
    }

     // update resourece &mut (
    // acquires Collection : return Collection list
     public fun add_item(account:&signer) acquires Collection {
        let addr = Signer::address_of(account);
        let collection = borrow_global_mut<Collection>(addr);
        Vector::push_back<Item>(&mut collection.items, Item{});
     }

    //
    public fun size(account:&signer):u64 acquires Collection{
        let addr = Signer::address_of(account);
        let collection = borrow_global<Collection>(addr);
        Vector::length(&collection.items)
    }
}