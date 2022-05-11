import Foundation

struct HelpModel: Hashable {
    var id = UUID()
    var title: String
    var description: String
    var type: HelpType
    var currentLocation: String
    var requestDate: Date
}

enum HelpType: String {
    case design = "Design"
    case code = "Progs"
    case business = "Business"
}
