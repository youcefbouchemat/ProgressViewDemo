//
//  ContentView.swift
//  ProgressViewDemo
//
//  Created by apple on 17/1/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0;
    
    var body: some View {
        VStack(spacing: 50) {
            ProgressView("Task Progress",value: progress,total: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: progress < 30 ?
                                                           Color.red : progress < 60 ?
                                                           Color.blue : Color.green))
                .font(.headline)
            
            Slider(value: $progress, in: 1...100,step: 1)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
