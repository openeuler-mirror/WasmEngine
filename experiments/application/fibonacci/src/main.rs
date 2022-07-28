use std::env;

fn fib(n: u64) -> u64 {
    if n <= 1 {
        return n;
    }
    fib(n - 1) + fib(n - 2)
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 1 {
        eprintln!("only single parameter is needed");
        return;
    }
    println!("{}", fib(args[0].parse::<u64>().unwrap()))
}
