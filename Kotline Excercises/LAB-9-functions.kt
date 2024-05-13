// Function to apply uppercase transformation to each string in the list
fun transformToUppercase(strings: List<String>): List<String> {
    // Check if the list of strings is empty
    if (strings.isEmpty()) {
        println("Empty list provided. No transformation applied.")
        return emptyList()
    }
    return strings.map { it.toUpperCase() }
}

// Function to filter out numbers greater than a certain value
fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    // Check if the list of numbers is empty
    if (numbers.isEmpty()) {
        println("Empty list provided. No numbers to filter.")
        return emptyList()
    }
    return numbers.filter { it > threshold }
}

// Function to calculate the sum of all elements in the list
fun calculateSum(numbers: List<Int>): Int {
    // Check if the list of numbers is empty
    if (numbers.isEmpty()) {
        println("Empty list provided. Sum is zero.")
        return 0
    }
    return numbers.sum()
}

fun main() {
    // Test data
    val strings = listOf("burn", "basket", "music")
    val numbers = listOf(10, 20, 30, 40, 50)
    val threshold = 30 // Threshold value

    // Apply uppercase transformation to strings
    val transformedStrings = transformToUppercase(strings)
    println("Uppercase transformation result: $transformedStrings")

    // Filter numbers greater than the threshold
    val filteredNumbers = filterNumbersGreaterThan(numbers, threshold)
    println("Filtered numbers greater than $threshold: $filteredNumbers")

    // Calculate the sum of all numbers
    val sum = calculateSum(numbers)
    println("Sum of all numbers: $sum")
}
