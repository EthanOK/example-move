script{ 
     use ethan::Coins; 
    use std::debug as Debug;  
     fun balance_coin( account: address){ 
      let val = Coins::balance(account); 
      Debug::print(&val); 
 
     } 
}