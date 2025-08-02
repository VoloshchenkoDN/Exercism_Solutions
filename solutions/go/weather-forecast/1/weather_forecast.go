// Package weather provides tools to show weather forecast.
package weather

// CurrentCondition represents a current weather condition.
var CurrentCondition string

// CurrentLocation represents a current location in a country.
var CurrentLocation string

// Forecast returns a string value about current weather condition in a certain location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
