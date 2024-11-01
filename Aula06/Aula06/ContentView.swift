import SwiftUI
import MapKit

struct location: Identifiable{
    let id = UUID()
    let nome: String
    let coordenada: CLLocationCoordinate2D
    let bandeira: String
    let descricao: String
}

struct ContentView: View {
    
    @State private var mapa = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -5.871405, longitude: -35.182640),
            span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        )
    )
    
    @State private var map2 = [
        location(nome: "Edilson", coordenada: CLLocationCoordinate2D(latitude: -5.871405, longitude: -35.182640), bandeira: "https://media-gru1-2.cdn.whatsapp.net/v/t61.24694-24/463940730_924661792854088_6525280992020775787_n.jpg?ccb=11-4&oh=01_Q5AaIPGjuOyzapdXJ0K8VCtPA_lIaK_Xag3AK6vif2OKH8a1&oe=67321D14&_nc_sid=5e03e0&_nc_cat=106", descricao: "Onde reside o Edilson do Hacktruck, ninguém(Icaro) vai fazer nada com ele")
    ]
    
    var body: some View {
        ZStack{
            Map(position: $mapa)
            //ontap gesture para fazer alguma coisa ser clicavel
            HStack{
                ForEach(ps)
            }
        }
    }
}

#Preview {
    ContentView()
}
