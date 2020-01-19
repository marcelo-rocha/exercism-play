// Package leap implements Exercism's leap solution
package leap

// IsLeapYear returns true if the argument is a leap year
func IsLeapYear(year int) bool {
	return ((year % 4) == 0) && (((year % 100) != 0) || ((year % 400) == 0))
}
