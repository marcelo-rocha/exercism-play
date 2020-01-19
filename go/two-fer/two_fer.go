// Package twofer should have a package comment that summarizes what it's about.
package twofer

import "fmt"

// ShareWith should have a comment documenting it.
func ShareWith(name string) string {
	if name == "" {
		return "One for you, one for me."
	}
	return fmt.Sprintf("One for %s, one for me.", name)
}
