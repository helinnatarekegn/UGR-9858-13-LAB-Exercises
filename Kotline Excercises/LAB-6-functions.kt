fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) {
        println("Empty list provided. No maximum value.")
        return null
    }
    return numbers.maxOrNull()
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) {
        println("Empty list provided. Cannot calculate average.")
        return null
    }
    val sum = numbers.sum()
    return sum / numbers.size
}

fun main() {
    val numbersInt = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val numbersDouble = listOf(1.5, 2.5, 3.5, 4.5, 5.5)

    // Find maximum value
    val max = findMax(numbersInt)
    println("Maximum value: $max")

    // Filter even numbers
    val evenNumbers = filterEvenNumbers(numbersInt)
    println("Even numbers: $evenNumbers")

    // Calculate average
    val average = calculateAverage(numbersDouble)
    println("Average: $average")
}
