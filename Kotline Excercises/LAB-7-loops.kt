fun main() {
    // Prompt the user for input
    println("Please enter a string:")
    val inputString = readLine() ?: ""

    // Check if the input string is empty
    if (inputString.isEmpty()) {
        println("Empty string provided. No minimum or maximum character.")
        return
    }

    var minChar = inputString[0] // Initialize minChar with the first character
    var maxChar = inputString[0] // Initialize maxChar with the first character

    // Iterate through each character in the input string
    for (char in inputString) {
        if (char < minChar) {
            minChar = char // Update minChar if the current character is smaller
        }
        if (char > maxChar) {
            maxChar = char // Update maxChar if the current character is larger
        }
    }

    // Print the minimum and maximum characters
    println("Minimum character: $minChar (ASCII value: ${minChar.toInt()})")
    println("Maximum character: $maxChar (ASCII value: ${maxChar.toInt()})")
}
