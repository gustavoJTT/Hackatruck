import SwiftUI

struct Musica: Hashable {
    var nome: String
    var artista: String
    var capa: String
}

struct ContentView: View {
    var url = URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRigbZGouocm0h1PY9M0Gro21A3-Y5BVyxzSg&s")
    
    let arrayMusicas = [
        Musica(nome: "Epitaph", artista: "King Crimson", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRigbZGouocm0h1PY9M0Gro21A3-Y5BVyxzSg&s"),
        Musica(nome: "Bohemian Rhapsody", artista: "Queen", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRigbZGouocm0h1PY9M0Gro21A3-Y5BVyxzSg&s"),
        Musica(nome: "Stairway to Heaven", artista: "Led Zeppelin", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRigbZGouocm0h1PY9M0Gro21A3-Y5BVyxzSg&s"),
        Musica(nome: "Hotel California", artista: "Eagles", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRigbZGouocm0h1PY9M0Gro21A3-Y5BVyxzSg&s"),
        Musica(nome: "Imagine", artista: "John Lennon", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRigbZGouocm0h1PY9M0Gro21A3-Y5BVyxzSg&s")
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .center)
            .ignoresSafeArea()
            
    
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(arrayMusicas, id: \.self) { musica in
                        HStack {
                            AsyncImage(url: URL(string: musica.capa)) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                Spacer()
                            } placeholder: {
                                ProgressView()
                            }
                            
                            VStack(alignment: .leading) {
                                Text(musica.nome)
                                    .font(.headline)
                                Text(musica.artista)
                                    .font(.subheadline)
                            }
                            Spacer()
                        }
                        .padding(.vertical, 5) // Espaçamento entre as linhas
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
