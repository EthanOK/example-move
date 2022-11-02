module ethan::Coins{ 
    use std::signer as Signer; 
 
    struct Coins has store{ 
        val:u64 
    } 
    struct Balance has key{ 
        coins:Coins 
    } 
 
    const ERR_BALANCE_NOT_EXISTS:u64 = 101; 
    const ERR_BALANCE_EXISTS:u64 = 102; 
 
    public fun mint(val:u64) :Coins{ 
        let coins = Coins{val}; 
        coins 
    } 
 
    public fun burn(coin: Coins) { 
        let Coins{val:_} = coin; 
        
    } 
 
    public fun create_balance(account:&signer){ 
        let acc_addr = Signer::address_of(account); 
        assert!(!exists<Balance>(acc_addr), ERR_BALANCE_EXISTS); 
        let zero_coin = Coins{val: 0}; 
        move_to<Balance>(account, Balance{coins: zero_coin}); 
    } 
 
    public fun balance_exists(acc_addr: address): bool{ 
        exists<Balance>(acc_addr) 
    } 
 
    public fun deposit(acc_addr: address, coins: Coins) acquires Balance{ 
        assert!(balance_exists(acc_addr), ERR_BALANCE_NOT_EXISTS); 
        let Coins{val} = coins; 
        let balance = borrow_global_mut<Balance>(acc_addr); 
        balance.coins.val = balance.coins.val + val; 
    } 
 
     public fun withdraw(account:&signer, val: u64): Coins acquires Balance{ 
         let acc_addr = Signer::address_of(account); 
        assert!(balance_exists(acc_addr), ERR_BALANCE_NOT_EXISTS); 
        let balance = borrow_global_mut<Balance>(acc_addr); 
        balance.coins.val = balance.coins.val - val; 
        Coins{val} 
     } 
     public fun balance(acc_addr: address): u64  acquires Balance{ 
        borrow_global<Balance>(acc_addr).coins.val 
     } 
}