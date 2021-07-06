//
//  HomeView.swift
//  runningLog (iOS)
//
//  Created by Abdullah Ridwan on 7/4/21.
//

import SwiftUI

struct HomeView: View {
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()

    @State private var runDate = Date()
    @State var showRunLogged = false
    
    @State private var sliderValue: Double = 0
    @State private var totalMileString: String = ""
    @State private var totalTimeString: String = ""
    @State private var caloriesBurnedString: String = ""
    @State private var commentsString: String = ""
    
    
    var body: some View {
        VStack {
            NavigationView{
                VStack{
                    
                    sliderComponent
                    DatePicker(selection: $runDate, in: ...Date(), displayedComponents: .date) {
                        Text("Select a date")
                    }
                        .padding(5)
                    //.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red.opacity(0.7), lineWidth: 1))
                        .padding(.horizontal, 15)

                    LabelTextField(label: "Miles Run", placeHolder: "Total Miles Run", bindingString: $totalMileString)
                    LabelTextField(label: "Time (in minutes)", placeHolder: "Total Time", bindingString: $totalTimeString)
                    LabelTextField(label: "Calories Burned", placeHolder: "Total Calories Burned", bindingString: $caloriesBurnedString)
                    LabelTextEditor(label: "Quick Comments", bindingString: $commentsString)
                    
                    
                    Button("Log Run") {
                        totalMileString = ""
                        totalTimeString = ""
                        caloriesBurnedString = ""
                        commentsString = ""
                        sliderValue = 0.0
                        runDate = Date()
                        self.showRunLogged.toggle()
                        print("\n")
                        print("totalMiles", $totalMileString)
                        print("totalTime", $totalTimeString)
                        print("totalCalories", $caloriesBurnedString)
                    }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red.opacity(0.75))
                        .cornerRadius(8.0)
                        .padding(.top, 10)
                        .sheet(isPresented: $showRunLogged) {
                                    RunLogged()
                                }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
                .navigationTitle(Text("Log Today's Run"))
            }
        }
        //.padding(.horizontal, 20)
        
    }
    
    
    
    
    var sliderComponent: some View {
        VStack {
            switch sliderValue {
            case 0...1:
                Text("You're just starting out")
            case 1...2:
                Text("You're a rising star")
            case 2...3:
                Text("You're world famous!")
            case 3...4:
                Text("Pretty Good! Getting the hang of this")
            case 4...5:
                Text("Easy Run! Feeling great!")
            default:
                Text("Move the Slider based on dificulty!")
            }
            Slider(value: $sliderValue, in: 0...5)
            Text("Current slider value: \(sliderValue, specifier: "%.2f")").font(.subheadline).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }.padding(20)
    }
}



struct LabelTextField : View {
    var label: String
    var placeHolder: String
    var bindingString: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
            TextField(placeHolder, text: bindingString)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black.opacity(0.7), lineWidth: 1))
                //.padding(10)
            }
            .padding(5)
            .padding(.horizontal, 15)
    }
}

struct LabelTextEditor : View {
    var label: String
    //var placeHolder: String
    var bindingString: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
            TextEditor(text: bindingString)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black.opacity(0.7), lineWidth: 1))
                //.padding(10)
                .foregroundColor(.black)
            }
            .padding(5)
            .padding(.horizontal, 15)
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
