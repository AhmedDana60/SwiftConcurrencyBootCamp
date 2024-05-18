//
//  DoCatchTryThrowsBootCampViewModel.swift
//  SwiftConcurrencyBootCamp
//
//  Created by Ahmed Dana Mohammed on 5/14/24.
//

import Foundation

class DoCatchTryThrowsBootCampManager {
    var isActive : Bool = true
    func getTitle() -> (title: String?, error: Error?) {
        if isActive {
            return ("NEW TITLE", nil)
        } else {
            return (nil, URLError(.appTransportSecurityRequiresSecureConnection))
        }
    }
    func getTitle2() -> Result<String, Error> {
        if isActive {
            return .success("NEW TITLE")
        } else {
            return .failure(URLError(.badURL))
        }
    }
    
    // la jyate away ema check bkayn bo awa result dast kawetw dway ba if e else bzanen ama nil yan na regay asan tr haya awaysih try and throw'a
    // am functiona ayawet stringekman bo bgarenetawa balam agar la 7alateka failed bu awa throws agarenetawa awish awaya ka errorekman ayate, ama la jyate away waku la sarawa check statment bkayn ba if w else hamwy bxayna result'awa enja la xwarawash calle bkayn, leraya ba yakjar hamwy akayn w tanha la xwarawa calle akayn hiche tr
    
    
    func getTitle3() throws -> String {
        if isActive {
            return ("NEW TITLE")
        } else {
            throw URLError((.badURL))
        }
    }
    
    func getTitle4() throws -> String {
        if isActive {
            return ("FINAL TEXT")
        } else {
            throw URLError((.badURL))
        }
    }
    
}



class DoCatchTryThrowsBootCampViewModel : ObservableObject {
    @Published var text: String = "Starting text."
    let manager = DoCatchTryThrowsBootCampManager()
    
    
    func fetchTitle() {
        
        // For more Detail
        /*
         let returnedValue = manager.getTitle()
         
         // Optional binding to unwrap the optional value
         if let newTitle = returnedValue.title {
         // this will change the text, it change from starting text to NEW TITLE and it tell the UI it is changing.
         self.text = newTitle
         } else if let error = returnedValue.error {
         self.text = error.localizedDescription
         }
         
         let result = manager.getTitle2()
         
         switch result {
         case .success(let newTitle):
         self.text = newTitle
         case .failure(let error):
         self.text = error.localizedDescription
         }
         */
        
        // if you make try optional, even you dont need to use do and catch, you can use it alone
        
        // We can use it like this!!!
        
//        let newTitle = try? manager.getTitle3()
//        if let newTitle = newTitle {
//            self.text = newTitle
//        }
      // we can also put it in do and catch like this:
        
        do {
            let newTitle = try? manager.getTitle3()
            if let newTitle = newTitle {
                self.text = newTitle
            }
            
            let finalText = try manager.getTitle4()
            self.text = finalText
        } catch {
            self.text = error.localizedDescription
        }
        
        
        //NOTE!!  in case if you have two statment in the Do, if one of them failed the other one will not be excuted, it will jump out from the do and excute the catch block.
//        do {
//            let newTitle = try manager.getTitle3()
//            self.text = newTitle
//
//            let finalText = try manager.getTitle4()
//            self.text = finalText
//        } catch {
//            self.text = error.localizedDescription
//        }
    }
}
