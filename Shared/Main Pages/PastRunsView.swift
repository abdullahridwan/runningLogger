//
//  PastRunsView.swift
//  runningLog (iOS)
//
//  Created by Abdullah Ridwan on 7/6/21.
//

import SwiftUI

struct PastRunsView: View {
    var body: some View {
        NavigationView{
            List{
                Text("One Item")
                Text("Another Item")
            }
            .navigationTitle("Past Workouts")
        }
    }
}

struct PastRunsView_Previews: PreviewProvider {
    static var previews: some View {
        PastRunsView()
    }
}
