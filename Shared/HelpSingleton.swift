import Foundation

public class HelpSingleton {
    static var shared = HelpSingleton()
    
    var helpModelList: [HelpModel] = []
    
    private init() {
        helpModelList = [
            HelpModel(title: "AAAAA", type: .business),
            HelpModel(title: "BBBBB", type: .code),
            HelpModel(title: "CCCCC", type: .business),
            HelpModel(title: "DDDDD", type: .code),
            HelpModel(title: "EEEEE", type: .design),
            HelpModel(title: "FFFFF", type: .design),
            HelpModel(title: "GGGGG", type: .code),
            HelpModel(title: "HHHHH", type: .business)
        ]
    }
}
