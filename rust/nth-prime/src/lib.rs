fn get_next_prime(primes: &Vec<u32>) -> u32 {
    let last_prime = primes.last().unwrap();
    let mut n = last_prime + 2;
    loop {
        if primes.iter().any(|&p| n % p == 0) {
            n += 2;
        } else {
            break;
        }
    }
    n
}

pub fn nth(n: u32) -> u32 {
    let n = n as usize;
    if n == 0 {
        return 2;
    }
    let mut primes: Vec<u32> = vec![
        3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97,
    ];
    if n <= primes.len() {
        return primes[n - 1];
    }
    primes.reserve(n - primes.len());

    while n > primes.len() {
        primes.push(get_next_prime(&primes));
    }

    primes[n - 1]
}
