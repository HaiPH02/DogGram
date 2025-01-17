//
//  CarouselView.swift
//  Dogy
//
//  Created by Hai Pham on 29/10/2024.
//

import SwiftUI

struct CarouselView: View {
    
    @State var selection: Int = 1
    @State var timerAdded: Bool = false
    
    let maxCount: Int = 8
    var body: some View {
        TabView(selection: $selection,
                content:  {
            ForEach(1..<maxCount, id: \.self) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count)
            }
        })
        .tabViewStyle(.page)
        .frame(height: 300)
        .onAppear {
            if !timerAdded {
                addTimer()
            }
        }
    }
    
    // MARK: Functions
    private func addTimer() {
        timerAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if selection == (maxCount - 1) {
                selection = 1
            } else {
                selection += 1
            }
        }
        
        timer.fire()
    }
}

#Preview {
    CarouselView()
}
