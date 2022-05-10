import Foundation

struct HelpModel: Hashable {
    var id = UUID()
    var title: String
    var type: HelpType
}

enum HelpType: String {
    case design = "Design"
    case code = "Progs"
    case business = "Business"
}
