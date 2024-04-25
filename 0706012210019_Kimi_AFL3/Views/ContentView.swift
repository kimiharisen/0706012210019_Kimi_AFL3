//
//  ContentView.swift
//  0706012210019_Kimi_AFL3
//
//  Created by MacBook Pro on 19/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
