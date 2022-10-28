address ethan{
    module student{
        struct Empty{}
        struct Student has copy, drop{
            id:u64,
            age:u8,
            sex:bool
        }
        struct User<T1,T2> has copy, drop{
            id: T1,
            age: T2
        }
        // constructor
        public fun new_student(s_id:u64, s_age:u8, s_sex:bool) :Student{
            Student{
                id:s_id,
                age:s_age,
                sex:s_sex
            }
        }
        // nuw user
        public fun new_user<T1,T2>(id:T1, age:T2) :User<T1,T2>{
            User{
                id,
                age
            }
        }
        public fun new_student2(id:u64, age:u8, sex:bool) :Student{
            Student{
                id,
                age,
                sex
            }
        }
        // get id
        public fun get_id(s:Student):u64{
            s.id
        }
    }
}