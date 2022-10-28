script {
    use std::debug as Debug;
    use ethan::math as Math;
    fun main(){
        let (x, y) = (15, 25);
        Math::swap_number(&mut x, &mut y);
        Debug::print(&x);
        Debug::print(&y);    
    }
}
// move-cli sandbox publish -v
// move-cli sandbox run scripts/reference_test.move