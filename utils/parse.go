package utils

import "strconv"

func FloatToInt(f float64) int {
	return int(f)
}

func IntToFloat(i int) float64 {
	return float64(i)
}

func StringToInt(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		return 0
	}
	return i
}

func StringToFloat(s string) float64 {
	f, err := strconv.ParseFloat(s, 64)
	if err != nil {
		return 0
	}
	return f
}
