#[no_mangle]
pub extern "C" fn get_42() -> i32 {
    42
}

#[repr(C)]
pub struct Point {
    pub x: f64,
    pub y: f64,
}

#[no_mangle]
pub extern "C" fn get_distance(p1: &Point, p2: &Point) -> f64 {
    ((p1.x - p2.x).powi(2) + (p1.y - p2.y).powi(2)).sqrt()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_get_42() {
        assert_eq!(get_42(), 42);
    }

    #[test]
    fn test_distance() {
        let p1 = Point{x: 3.0, y: 4.0};
        let p2 = Point{x: 0.0, y: 0.0};
        assert!((get_distance(&p1, &p2) - 5.0).abs() < 1e-10f64);
    }
}
