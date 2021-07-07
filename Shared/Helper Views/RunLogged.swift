//
//  RunLogged.swift
//  runningLog (iOS)
//
//  Created by Abdullah Ridwan on 7/5/21.
//
import SwiftUI
import Lottie
//import SwiftUI

struct RunLogged: View {
    var body: some View {
        VStack {
            LottieView(filename: "Switch")
                .frame(width: 100, height: 100, alignment: .center)
        }
        
    }
}






struct RunLogged_Previews: PreviewProvider {
    static var previews: some View {
        RunLogged()
    }
}

