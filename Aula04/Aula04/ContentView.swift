//
//  ContentView.swift
//  Aula04
//
//  Created by Turma01-14 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            BrushView()
                .tabItem{
                    Label("Brush", systemImage: "paintbrush")
                }
            BrushView2()
                .tabItem{
                    Label("Brush", systemImage: "paintbrush.pointed")
                }
            PaletView()
                .tabItem{
                    Label("Brush", systemImage: "paintpalette.fill")
                }
            ListView()
                .tabItem{
                    Label("Brush", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
