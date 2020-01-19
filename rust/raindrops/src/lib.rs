pub fn raindrops(n: u32) -> String {
    let mut s = String::new();
    const FACTORS: [u32; 3] = [3, 5, 7];
    const NAMES: &[&str] = &["Pling", "Plang", "Plong"];
    for (i, f) in FACTORS.iter().enumerate() {
        if (n % f) == 0 {
            s += NAMES[i]
        }
    }
    if s == "" {
        n.to_string()
    } else {
        s
    }
}
