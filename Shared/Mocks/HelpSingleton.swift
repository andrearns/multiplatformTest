import Foundation

public class HelpSingleton {
    static var shared = HelpSingleton()
    
    var helpModelList: [HelpModel] = []
    
    private init() {
        helpModelList = [
            HelpModel(title: "Como configurar campanhas no Facebook Ads", description: "Precisava de muita ajuda com o meu projeto, to tentando usar a biblioteca Metal pra fazer formas primitivas, triangleStrip no caso, mas to me batendo bastante", type: .business, currentLocation: "Aquário", requestDate: Date()),
            HelpModel(title: "Arquitetura MVVM", description: "precisava de muita ajuda com o meu projeto, to tentando usar a biblioteca Metal pra fazer formas primitivas, triangleStrip no caso, mas to me batendo bastante", type: .code, currentLocation: "Discord - Lab 2", requestDate: Date()),
            HelpModel(title: "Modelo de negócios", description: "precisava de muita ajuda com o meu projeto, to tentando usar a biblioteca Metal pra fazer formas primitivas, triangleStrip no caso, mas to me batendo bastante", type: .business, currentLocation: "Lab 2", requestDate: Date(timeIntervalSince1970: 1649639206)),
            HelpModel(title: "Frameworks da Apple", description: "precisava de muita ajuda com o meu projeto, to tentando usar a biblioteca Metal pra fazer formas primitivas, triangleStrip no caso, mas to me batendo bastante", type: .code, currentLocation: "Firecamp", requestDate: Date()),
            HelpModel(title: "Feedbacks do protótipo", description: "precisava de muita ajuda com o meu projeto, to tentando usar a biblioteca Metal pra fazer formas primitivas, triangleStrip no caso, mas to me batendo bastante", type: .design, currentLocation: "Copa", requestDate: Date()),
            HelpModel(title: "Ilustrações", description: "precisava de muita ajuda com o meu projeto, to tentando usar a biblioteca Metal pra fazer formas primitivas, triangleStrip no caso, mas to me batendo bastante", type: .design, currentLocation: "Enterprise", requestDate: Date()),
            HelpModel(title: "Como fazer um app multiplataforma?", description: "precisava de muita ajuda com o meu projeto, to tentando usar a biblioteca Metal pra fazer formas primitivas, triangleStrip no caso, mas to me batendo bastante", type: .code, currentLocation: "Lab 1", requestDate: Date()),
            HelpModel(title: "Como fazer um modelo de assinatura que funcione?", description: "precisava de muita ajuda com o meu projeto, to tentando usar a biblioteca Metal pra fazer formas primitivas, triangleStrip no caso, mas to me batendo bastante", type: .business, currentLocation: "Lab 3", requestDate: Date())
        ]
    }
}
