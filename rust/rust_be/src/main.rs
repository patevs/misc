
/*
    src/main.rs
*/

use std::io;
use std::process;
use std::process::Command;

const SERVER_PORT: u16 = 5555;

// main function
fn main() {
    // print Welcome
    print_welcome();
    // print info
    print_info();
    // get the server port
    let port = get_port();
    // start server
    init_server(port);
}

// print welcome message
fn print_welcome(){
    let title = "rust_be";
    let version = "0.5";
    println!("");
    println!("Welcome to {} app.", title);
    println!("Version: {}", version);
}

// print info message
fn print_info(){
    println!("");
    println!("Please select your desired task: ");
    println!("(0) Exit app.");
    println!("(1) Print info.");
    println!("(2) Print working directory.");
    println!("(3) Check environment.");
    println!("(4) Move into cwd.");
    println!("Please input your selection.");
    get_input();
}

// reset function
fn reset(){
    println!("Printing info...");
    print_info();
}

// get the users input
fn get_input(){
    // get input
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input)
            .expect("Failed to read line");
        let input: u8 = match input.trim().parse(){
            Ok(num) => num,
            Err(_) => continue,
        };
        println!("You selected: {}", input);
        if input == 0 {
            println!("Exiting...");
            process::exit(0);
        } else if input == 1 {
            reset();
            break;
        } else if input == 2 {
            println!("Printing working directory...");
            //Command::new("ls").arg("-l").arg("-a")
            //         .spawn()
            //         .expect("ls command failed to start");
            //println!("directory contents:");
            //Command::new("dir").spawn().expect("dir command failed");
            println!("directory path");
            Command::new("pwd").spawn().expect("pwd command failed");
            break;
        } else if input == 3 {
            println!("node check:");
            Command::new("node").arg("-v").spawn().expect("node version check command failed");
            //reset();
            break;
        }
    }
}

// get the server port
fn get_port() -> u16 {
    if validate_port(SERVER_PORT) {
        SERVER_PORT
    } else {
        println!("Port validation failed: Default to port `5555`");
        5555
    }
}

// ensure the server port is valid
fn validate_port(port: u16) -> bool {
    let result = if port <= 9999 {
        true
    } else {
        false
    };
    result
}

// start the server
fn init_server(port: u16) {
    println!("Starting server on port {}", port);
}
