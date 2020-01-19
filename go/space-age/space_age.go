// Package space implements Space Age problem solution
package space

// Planet is a label for planet's name
type Planet string

// Age calculates how old be someone with SEC seconds of life on planet P
func Age(sec float64, p Planet) (r float64) {
	earthAge := sec / 31557600
	switch p {
	case "Earth":
		r = earthAge
	case "Mercury":
		r = earthAge / 0.2408467
	case "Venus":
		r = earthAge / 0.61519726
	case "Mars":
		r = earthAge / 1.8808158
	case "Jupiter":
		r = earthAge / 11.862615
	case "Saturn":
		r = earthAge / 29.447498
	case "Uranus":
		r = earthAge / 84.016846
	case "Neptune":
		r = earthAge / 164.79132
	default:
		r = 0
	}
	return
}
