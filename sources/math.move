module ethan::math1{
    public fun sum(a:u64,b:u64):u64{
        a + b
    }
    public fun sum_as(a:u64,b:u8):u64{
        return a + (b as u64)
    }
    public fun max(a:u64,b:u64):u64{
       if(a > b)  a else b
    }
    // 1+2+3+...+100+...a
    public fun sum100(a:u64):u64{
       let i:u64 = 1;
        let sum:u64 = 0;
        while(i <= a){
            sum = sum + i;
            i = i + 1;
        };
        return sum
    }
    // 1+3+5+...+99+...a
    public fun sum99(a:u64):u64{
       let i:u64 = 0;
        let sum:u64 = 0;
        while(i <= a){
            i = i + 1;
            if(i % 2 == 0) continue;
            // continue jump next loop
            sum = sum + i; 
        };
        return sum
    }
}