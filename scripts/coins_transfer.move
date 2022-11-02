script{ 
     use ethan::Coins; 
     fun transfer_coin(from: signer, to: address, amount: u64){ 
      let coins = Coins::withdraw(&from, amount); 
      Coins::deposit(to, coins); 
     } 
}