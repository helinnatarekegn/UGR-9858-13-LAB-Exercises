fun main() {
    
    val distance = 100.0 
    val initialUnit = "kilometers" 

    /
    val kilometersToMiles = 0.621371
    val milesToKilometers = 1 / kilometersToMiles

    
    val convertedDistance = when (initialUnit) {
        "kilometers" -> distance * kilometersToMiles
        "miles" -> distance * milesToKilometers
        else -> {
            println("Unsupported initial unit: $initialUnit")
            return 
        }
    }

    /
    val formattedConvertedDistance = "%.2f".format(convertedDistance)

    
    if (initialUnit == "miles") {
        println("Converted distance: $formattedConvertedDistance kilometers")
    } else {
        println("Converted distance: $formattedConvertedDistance miles")
    }
}