fatherAge <- function(parentalAgeObject = NULL, modelType="linear") {
    if(is.null(parentalAgeObject)){
    message("missing datasets")
    } else {
        
        if(modelType=="linear"){
            print(parentalAge(parentalAgeObject, modelType="linear", parent="father"))
        }
        
        if(modelType=="exponential"){
            print(parentalAge(parentalAgeObject, modelType="exponential", parent="father"))

        }
    }
}
