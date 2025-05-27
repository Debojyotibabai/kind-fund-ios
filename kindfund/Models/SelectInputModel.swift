struct SelectInputModel: Identifiable {
    let label: String
    let value: String
    
    var id: String {
        return value
    }
}
