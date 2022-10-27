script {
    use std::debug;
    use ethan::math1 as Math;
    fun main(a:u64){  
        if(a % 2 == 0){
            let sum100:u64 = Math::sum100(a);
            debug::print(&sum100);
        }else{
            let sum99:u64 = Math::sum99(a);
            debug::print(&sum99);
        }
        

    }
}

// move-cli sandbox publish -v
// move-cli sandbox run scripts/fun_test.move --args 100