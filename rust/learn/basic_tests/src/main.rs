
/*
    basic_tests
    src/main.rs
*/

const NAME: &str = "basic_tests";
const VERSION: f32 = 0.5;

// main function
fn main() {
    print_welcome();
}

// print welcome message
fn print_welcome(){
    println!("\nRunning program...");
    println!("\n Program info: ");
    println!("\tName: {}", &NAME);
    println!("\tVersion: {}", &VERSION);
    println!("\n");
}
