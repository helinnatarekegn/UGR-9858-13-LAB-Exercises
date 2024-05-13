fun main() {
    
    println("Enter the numeric grade (between 0 and 100):")
    val grade = readLine()?.toIntOrNull()

    e
    if (grade == null || grade !in 0..100) {
        println("Invalid input! Please enter a numeric grade between 0 and 100.")
        return
    }

    
    val letterGrade = when {
        grade >= 90 -> "A"
        grade in 80..89 -> "B"
        grade in 70..79 -> "C"
        grade in 60..69 -> "D"
        else -> "F"
    }

    
    println("Letter grade: $letterGrade")
}
