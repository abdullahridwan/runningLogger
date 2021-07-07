//
//  LottieView.swift
//  runningLog
//
//  Created by Abdullah Ridwan on 7/6/21.
//

import SwiftUI
import Lottie


struct LottieView: UIViewRepresentable {
  typealias UIViewType = UIView
  var filename: String
  
  func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
    let view = UIView(frame: .zero)
    
    let animationView = AnimationView()
    let animation = Animation.named(filename)
    animationView.animation = animation
    animationView.contentMode = .scaleAspectFit
    animationView.play()
    
    animationView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(animationView)
    
    NSLayoutConstraint.activate([
      animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
      animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
      animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
    
    return view
  }
  
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) { }
}

struct LottieView_Previews: PreviewProvider {
    static var previews: some View {
        LottieView(filename: "HamburgerArrow")
            .frame(width: 30, height: 30, alignment: .center)
    }
}
