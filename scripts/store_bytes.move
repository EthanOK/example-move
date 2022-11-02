script{ 
 
    use ethan::Storage; 
    fun store_bytes(account:signer,val:vector<u8>){  
        Storage::store(&account,val); 
    } 
} 
// move-cli sandbox run scripts/store_bytes.move --args 0x777 b`ggg`