// Package gigasecond implements a solution for Exercism's Gigasecond problem
package gigasecond

// import path for the time package from the standard library
import "time"

// AddGigasecond returns t plus 1 Gigasecond
func AddGigasecond(t time.Time) time.Time {
	return t.Add(time.Second * 1_000_000_000)
}
