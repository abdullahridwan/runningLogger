//
//  Onboarding.swift
//  runningLog (iOS)
//
//  Created by Abdullah Ridwan on 7/4/21.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        TabView {
          Color.gray
          Color.green
          Color.blue
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
