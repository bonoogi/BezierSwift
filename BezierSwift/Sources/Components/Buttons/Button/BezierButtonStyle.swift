//
//  BezierButtonStyle.swift
//
//
//  Created by Tom on 6/28/24.
//

import SwiftUI

struct BezierButtonStyle: ButtonStyle {
  let cornerRadius: CGFloat
  let backgroundColor: BezierColor
  
  init(cornerRadius: CGFloat, backgroundColor: BezierColor) {
    self.cornerRadius = cornerRadius
    self.backgroundColor = backgroundColor
  }
  
  // TODO: Pressed Color 논의가 끝나지 않은 상태라 이번 PR에서 제외합니다. by Tom 2024.08.02
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .background(
        RoundedRectangle(cornerRadius: self.cornerRadius, style: .circular)
          .foregroundColor(
            configuration.isPressed ? self.backgroundColor.pressedColor: self.backgroundColor.color
          )
      )
  }
}
