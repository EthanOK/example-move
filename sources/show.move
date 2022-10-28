module ethan::show{
    use std::debug as Debug;

    public fun show<T:drop>(a: T) {
    Debug::print(&a);
    }
}