//
//  ContentView.swift
//  Books
//
//  Created by Sasha Prokhorenko on 20.11.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State private var tapCount = 0
	
    var body: some View {
					Button("Tap Count \(tapCount)") {
						self.tapCount += 1
					}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
