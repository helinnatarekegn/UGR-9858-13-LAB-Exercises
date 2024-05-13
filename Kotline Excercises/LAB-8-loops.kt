import kotlin.random.Random

fun generateRandomPassword(length: Int): String {
    if (length <= 0) {
        println("Invalid password length. Length should be greater than 0.")
        return ""
    }

    val passwordChars = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*')
    val password = StringBuilder()

    repeat(length) {
        val randomIndex = Random.nextInt(passwordChars.size)
        password.append(passwordChars[randomIndex])
    }

    return password.toString()
}

fun main() {
    // Prompt the user for password length
    println("Please enter the length of the password:")
    val inputLength = readLine()?.toIntOrNull()

    // Check if input length is valid
    if (inputLength == null || inputLength <= 0) {
        println("Invalid input. Please provide a valid positive integer for password length.")
        return
    }

    // Generate and print the random password
    val password = generateRandomPassword(inputLength)
    println("Generated Password: $password")
}
