//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 31/01/2023.
//

import SwiftUI

struct RootTabView: View {
    
    
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "person.fill.checkmark")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Statistics")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(StateController())
    }
}
