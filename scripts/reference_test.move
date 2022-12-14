script {
    use std::debug as Debug;
    use std::vector as Vector;
    use ethan::math as Math;
    use ethan::show as Show;
    fun main(){
        let (x, y) = (15, 25);
        Math::swap_number(&mut x, &mut y);
        Debug::print(&x);
        Debug::print(&y); 

        let str = b"hello";
        Show::show(str);  

        let v2 = Vector::empty<u64>();
        Vector::push_back<u64>(&mut v2, 19);
        Vector::push_back<u64>(&mut v2, 29);
        Debug::print(&v2);  
        let v3 = Vector::empty<u64>();
        Vector::push_back<u64>(&mut v3, 115);
        Vector::push_back<u64>(&mut v3, 145);
        // 19 29 115 145
        Vector::append<u64>(&mut v2, v3);
        Debug::print(&v2);  
        // 145 115 29 19
        Vector::reverse<u64>(&mut v2);
        Debug::print(&v2);  
    }
}
// move-cli sandbox publish -v
// move-cli sandbox run scripts/reference_test.move