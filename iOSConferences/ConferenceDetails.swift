//
//  ConferenceDetails.swift
//  iOSConferences
//
//  Created by José Ríos on 26/02/22.
//
//

import SwiftUI

struct ConferenceDetails: View {
    var conference: Conference

    var body: some View {
        VStack(alignment: .leading) {
            Text(conference.location).padding(.bottom)
            Text(conference.textDates()).padding(.bottom)
            LinkButton(link: conference.link).padding(.bottom)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading).padding().navigationTitle(conference.name)
    }
}

struct LinkButton: View {
    var link = ""
    var body: some View {
        Button(action: {
            UIApplication.shared.open(URL(string: link)!)
        }) {
            Text("Go to official website")
        }
    }
}

class ConferenceDetails_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceDetails(conference: Conference())
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView:  ConferenceDetails(conference: Conference()))
    }
    #endif
}
