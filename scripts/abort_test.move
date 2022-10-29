script {
    use std::debug;
    
    fun main(a:u64){ 
        let r:u8 = 5; 
        if(a == 100)
        abort 1;
        // if a == 50 next line code else abort 0
        // if  condition is false, abort code
        assert!(a == 50, 0);
        debug::print(&a);
        let r1:&u8 = &r;
        debug::print(r1);
    }
}

// move-cli sandbox publish -v
// move-cli sandbox run scripts/abort_test.move --args 100