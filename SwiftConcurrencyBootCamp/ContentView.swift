//
//  ContentView.swift
//  SwiftConcurrencyBootCamp
//
//  Created by Ahmed Dana Mohammed on 5/14/24.
//
/*
 Clone = Copying the repo locally
 Commit = Save ("checkpoint") on our current branch
 Stage = Prepare changes for a commit
 Stash = Save changes for later
 Push = Send local commits to remote repo
 Pull = Fetch remote commits to local repo
 
 
 COMMIT MESSAGES
 
 NEW FEATURE:
 [Feature] Descroption of the feature
 
 BUG NOT IN PRODUCTION:
 [Bug] Descroption of the bug
 
 RELEASE:
 [Release] Descroption of release
 
 BUG IN PRODUCTION:
 [Patch] Descroption of patch
 
 MUNDANE TASKS:
 [Clean] Description of changes
 
 
 */



import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
