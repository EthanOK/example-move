script{
    use std::debug as Debug;
    use ethan::student;
    fun main(){
        let s = student::new_student(20221028, 25, true);
        let id = student::get_id(s);
        Debug::print(&s);
        Debug::print(&id);
        // Generic structs
        let user = student::new_user<u64, u8>(2019, 20);
        Debug::print(&user);
        let user = student::new_user(2018, 30);
        Debug::print(&user);
        let user = student::new_user(2022, true);
        Debug::print(&user);
    }
}

// move-cli sandbox run scripts/struct_test.move