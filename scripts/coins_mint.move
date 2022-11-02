script{ 
     use std::signer as Signer;  
     use ethan::Coins; 
     fun mint_coin(account: signer, amount: u64){ 
        let acc_addr = Signer::address_of(&account); 
        let coins = Coins::mint(amount); 
        if(!Coins::balance_exists(acc_addr)){ 
            Coins::create_balance(&account); 
        }; 
        Coins::deposit(acc_addr, coins); 
     } 
}