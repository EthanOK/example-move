script {
    use std::debug;
    use ethan::math1 as Math;
    
    fun main(a:u64, b:u64){
        let c = Math::sum(a, b);
        debug::print(&c);

        let d = Math::sum_as(a, (b as u8));
        debug::print(&d);

        let e = Math::max(a, b);
        debug::print(&e);
        
    }
}
// move-cli build
// move-cli sandbox publish -v
// move-cli sandbox run scripts/calnumber.move --args 100 256