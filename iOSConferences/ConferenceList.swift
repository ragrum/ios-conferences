//
//  ContentView.swift
//  iOSConferences
//
//  Created by José Ríos on 14/02/22.
//
//

import SwiftUI

struct ConferenceList: View {
    var body: some View {
        NavigationView {
            List(conferencesData) { conference in
                NavigationLink(destination: ConferenceDetails(conference: conference)) {
                    VStack(alignment: .leading) {
                        Text(conference.name).font(.headline)
                        Text(conference.location).font(.subheadline)
                    }.navigationTitle("Conferences")
                }
            }
        }
    }
}

class ConferenceList_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceList()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: ConferenceList())
    }
    #endif
}
