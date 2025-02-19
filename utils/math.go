package utils

func Add(x, y float64) float64 {
	return x + y
}

func Sub(x, y float64) float64 {
	return x - y
}

func Mul(x, y float64) float64 {
	return x * y
}

func Div(x, y float64) float64 {
	if y == 0 {
		return 0
	}
	return x / y
}
