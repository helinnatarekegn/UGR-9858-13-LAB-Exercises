fun main() {
    
    val originalPrice = 100.0
    var discountPercentage = 0.6 
    val threshold = 0.5 

    
    if (discountPercentage > threshold) {
        println("The discount percentage is too high. Setting it to the threshold value.")
        discountPercentage = threshold
    }

   
    val finalPrice = originalPrice * (1 - discountPercentage)

    
    println("Original price: $originalPrice")
    println("Discount percentage: ${String.format("%.1f%%", discountPercentage * 100)}")
    println("Final price after discount: $finalPrice")
}
