fun main() {
    println("Enter the first number:")
    val num1Input = readLine()
    if (num1Input == null) {
        println("No input provided for the first number!")
        return
    }
    val num1 = try {
        num1Input.toDouble()
    } catch (e: NumberFormatException) {
        println("Invalid input for the first number!")
        return
    }

    println("Enter the second number:")
    val num2Input = readLine()
    if (num2Input == null) {
        println("No input provided for the second number!")
        return
    }
    val num2 = try {
        num2Input.toDouble()
    } catch (e: NumberFormatException) {
        println("Invalid input for the second number!")
        return
    }

    println("Enter the operation (addition, subtraction, multiplication, division):")
    val operation = readLine()

    when (operation) {
        "addition" -> println("Result: ${num1 + num2}")
        "subtraction" -> println("Result: ${num1 - num2}")
        "multiplication" -> println("Result: ${num1 * num2}")
        "division" -> {
            if (num2 != 0.0) {
                println("Result: ${num1 / num2}")
            } else {
                println("Error: Division by zero!")
            }
        }
        else -> println("Invalid operation!")
    }
}
