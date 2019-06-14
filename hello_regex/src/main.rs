use std::io::{BufReader, BufRead};
use std::fs::File;
use std::env;

use regex::Regex;

fn main() {
    let filename = env::args().nth(1).expect("Need to provide file name as argument");
    let f = File::open(filename).expect("Failed to open input file");
    let f = BufReader::new(f);

    let mut num = 0;
    let re = Regex::new(r"Benutzer.*\.html").unwrap();

    for line in f.lines() {
        let line = line.unwrap();
        if re.is_match(&line) {
            num += 1;
        }
    }

    println!("Found {} matches", num);
}
