fun analyzeString(inputString: String): Triple<Int, Int, Int> {
    // Check for empty input string
    if (inputString.isEmpty()) {
        println("Empty string provided. Analysis results will be 0.")
        return Triple(0, 0, 0)
    }

    var wordCount = 0
    var uppercaseCount = 0
    var vowelCount = 0

    val vowels = setOf('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')

    // Iterate through each character in the input string
    for (char in inputString) {
        if (char.isWhitespace()) {
            wordCount++
        }
        if (char.isUpperCase()) {
            uppercaseCount++
        }
        if (char in vowels) {
            vowelCount++
        }
    }

    // Add 1 to wordCount for the last word
    wordCount++

    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    // Prompt the user for input
    println("Please enter a string:")
    val inputString = readLine() ?: "" // Handle potential null input

    // Type check (optional)
    if (inputString is String) {
        val (wordCount, uppercaseCount, vowelCount) = analyzeString(inputString)
        println("Number of words: $wordCount")
        println("Number of uppercase letters: $uppercaseCount")
        println("Number of vowels: $vowelCount")
    } else {
        println("Invalid input type. Please provide a string.")
    }
}
