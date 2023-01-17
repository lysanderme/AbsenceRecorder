//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Lysander Myrddin-Evans on 17/01/2023.
//

import SwiftUI

struct ContentView: View {
    let div = Division.examples[0]
    var body: some View {
        Form {
            VStack(alignment: .leading) {
                Text("Division \(div.code)")
                Text("Size: \(div.students.count)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
