//
//  ContentView.swift
//  ar-body-tracking-ios
//
//  Created by Mohak Tamhane on 1/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ARViewContainer()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
