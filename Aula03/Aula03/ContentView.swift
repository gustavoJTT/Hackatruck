import SwiftUI

struct ContentView: View {
    @State private var altura: String = ""
    @State private var altura2: Double = 0
    @State private var peso: String = ""
    @State private var peso2: Double = 0
    @State private var texto: String = "IMC"
    @State private var cor: String = "BG"
    var body: some View {
        ZStack{
            Color(cor).ignoresSafeArea()
            VStack{
                Text("Calculadora de IMC").font(.largeTitle)
                
                
                TextField("Digite sua altura", text: $altura)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode).padding().background(Color.white)
                    .cornerRadius(10).multilineTextAlignment(.center)

                
                TextField("Digite seu peso", text: $peso)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode).padding().background(Color.white)
                    .cornerRadius(10).multilineTextAlignment(.center)
                
                Button(action: {result()}, label: {Text("Calcular").font(.headline).bold().foregroundStyle(.white).padding().background(Capsule())})
                
                Spacer()
                
                Text(texto).font(.title)
                
                Spacer()
                
            }.padding()
        }
    }
    
    func result(){
        altura2 = (altura as NSString).doubleValue
        peso2 = (peso as NSString).doubleValue
        
        if (peso2/(altura2 * altura2) < 18.5){
            texto = "Baixo Peso"
            cor = "Baixo"
        }else if(peso2/(altura2 * altura2) >= 18.5 && peso2/(altura2 * altura2) < 24.9){
            texto = "Normal"
            cor = "Normal"
        }else if(peso2/(altura2 * altura2) >= 25 && peso2/(altura2 * altura2) < 29.9){
            texto = "Sobrepeso"
            cor = "Sobrepeso"
        }else if(peso2/(altura2 * altura2) >= 30 && peso2/(altura2 * altura2) < 39.9){
            texto = "Obesidade"
            cor = "Obesidade"
        }else if(peso2/(altura2 * altura2) >= 40){
            texto = "Obesidade Grave"
            cor = "Obesidade_Grave"
        }
    }
}

#Preview {
    ContentView()
}
