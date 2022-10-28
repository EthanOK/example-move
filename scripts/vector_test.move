script {
    use std::debug as Debug;
    use std::vector as Vector;
    fun main(){
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

        let (succ, i) = Vector::index_of<u64>(&v2, &115);
        Debug::print(&succ);
        Debug::print(&i);
    }
}
// move-cli sandbox publish -v
// move-cli sandbox run scripts/vector_test.move

/* result
[debug] (&) [19, 29]
[debug] (&) [19, 29, 115, 145]
[debug] (&) [145, 115, 29, 19]
[debug] true
[debug] 1
*/