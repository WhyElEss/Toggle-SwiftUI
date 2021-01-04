//
//  ToggleView.swift
//  Toggle-SwiftUI
//
//  Created by Юрий Станиславский on 04.01.2021.
//

import SwiftUI

struct ToggleView: View {
    @State private var isOnToggle = false
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(isOnToggle ? Color.pink : Color.blue)
                
                Text(isOnToggle ? "This text is on PINK screen" : "This text is on BLUE screen")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            
            Toggle(isOn: $isOnToggle, label: {
                Text("Switch Color")
                    .font(.headline)
            })
        }
        .padding()
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
