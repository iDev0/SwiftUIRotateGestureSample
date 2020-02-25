//
//  ContentView.swift
//  RotateGestureSample
//
//  Created by MakeItSimple on 2020/02/26.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var degrees: Double = 0
    
    var body: some View {
        Image("Logo")
            .rotationEffect(Angle(degrees: degrees))
            .gesture(RotationGesture().onChanged { value in
                self.degrees = value.degrees
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
