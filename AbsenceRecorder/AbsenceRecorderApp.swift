//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 17/01/2023.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
