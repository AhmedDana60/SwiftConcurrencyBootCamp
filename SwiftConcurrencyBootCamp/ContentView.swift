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
 Merge = Joining two different branch
 Rebase = Moving one branch on top of another branch
 Cherry picking = Duplication (copying) one commit from one branch to another
 Pull Request (PR) = Request to merge branch
 PR Merge = Merge all commits
 PR Squash and Merge = Squash all commits into ONE and then merge ONE commit
 Protecting Branches
 CODEOWNERS
 GitIgnore
 ReadMe
 Realeses, Tags , Versioning
 
 
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


//class DoCatchTryThrowsBootCampManager {
//    func getTitle() -> String {
//        return "NEW TITLE"
//    }
//}
//
//
//
//class DoCatchTryThrowsBootCampViewModel : ObservableObject {
//    @Published var text: String = "Starting text."
//    let manager = DoCatchTryThrowsBootCampManager()
//    
//    
//    func fetchTitle() {
//        let newTitle = manager.getTitle()
//        self.text = newTitle
//    }
//}





#Preview {
    ContentView()
}
