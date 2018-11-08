
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

// basic_tests project tests module
#[cfg(test)]
mod basic_tests {

    #[test]
    fn test_basic(){
        assert!(1 == 1); // Ok
    }

    #[test]
    #[should_panic]
    fn test_panic(){
        panic!("Test Panics!");
    }

    #[test]
    fn test_equal(){
        // check second parameter is equal
        assert_eq!(2, 1 + 1);
    }

    #[test]
    fn test_nt_eq(){
        // check second parameter is not equal
        assert_ne!(2, 1 + 2);
    }

}