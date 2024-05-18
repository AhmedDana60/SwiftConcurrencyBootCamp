//
//  AsyncAwaitBootCamp.swift
//  SwiftConcurrencyBootCamp
//
//  Created by Ahmed Dana Mohammed on 5/16/24.
//

import SwiftUI

class AsyncAwaitBootCampViewModel : ObservableObject {
    
    @Published var dataArray: [String] = []
    
    func addTitle1() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.dataArray.append("Title1 : \(Thread.current)")
        }
    }
    func addTitle2() {
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            let title = "Title2 :  \(Thread.current)"
            DispatchQueue.main.async {
                self.dataArray.append(title)
                
                let title3 = "Title3 :  \(Thread.current)"
                self.dataArray.append(title)

            }
        }
    }
    func addAuthor1() async {
        let author1 = "Author1 : \(Thread.current)"
        self.dataArray.append(author1)
        
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        
        let author2 = "Auhtor2 : \(Thread.current)"
        await MainActor.run(body: {
            self.dataArray.append(author2)
            
            let author3 = "Auhtor3 : \(Thread.current)"
            self.dataArray.append(author3)

        })
        await addSomeTHing()
    }
    func addSomeTHing() async {
        
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        let someThing1 = "someThing1 : \(Thread.current)"
        await MainActor.run(body: {
            self.dataArray.append(someThing1)
            
            let someThing2 = "someThing2 : \(Thread.current)"
            self.dataArray.append(someThing2)

        })


    }
}


struct AsyncAwaitBootCamp: View {
    
    @StateObject private var viewModel = AsyncAwaitBootCampViewModel()
    
    var body: some View {
        
        List{
            ForEach(viewModel.dataArray,id: \.self) { data in
                Text(data)
            }
        }
        .onAppear {
            Task {
               await viewModel.addAuthor1()
                await viewModel.addSomeTHing()
                
                let finalText = "FINAL TEXT : \(Thread.current)"
                viewModel.dataArray.append(finalText)
            }
//            viewModel.addTitle1()
//            viewModel.addTitle2()
        }
    }
}

#Preview {
    AsyncAwaitBootCamp()
}
