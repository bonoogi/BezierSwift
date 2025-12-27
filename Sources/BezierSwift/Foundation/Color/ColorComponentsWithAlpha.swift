//
//  ColorComponentsWithAlpha.swift
//  BezierSwift
//
//  Created by 구본욱 on 12/10/25.
//

import SwiftUI
import UIKit

fileprivate extension Color {
  init(r: Double, g: Double, b: Double, alpha: Double) {
    self = Color(red: r / 255, green: g / 255, blue: b / 255, opacity: alpha)
  }
}

public struct ColorComponentsWithAlpha: Equatable {
  private let red: Double
  private let green: Double
  private let blue: Double
  private let alpha: Double
  
  public init(red: Double, green: Double, blue: Double, alpha: Double) {
    self.red = red
    self.green = green
    self.blue = blue
    self.alpha = alpha
  }
  
  public var color: Color {
    Color(red: self.red / 255, green: self.green / 255, blue: self.blue / 255, opacity: alpha)
  }
  
  public var uiColor: UIColor {
    UIColor(red: self.red / 255, green: self.green / 255, blue: self.blue / 255, alpha: alpha)
  }
}

extension ColorComponentsWithAlpha {
  func getHSL() -> (hue: Int, saturation: Int, lightness: Int) {
    let r = self.red / 255.0
    let g = self.green / 255.0
    let b = self.blue / 255.0

    let maxVal = max(r, g, b)
    let minVal = min(r, g, b)
    let delta = maxVal - minVal

    // Lightness (0-100)
    let lightness = Int(round(((maxVal + minVal) / 2.0) * 100.0))

    // Saturation (0-100)
    var saturation: Int = 0
    if delta != 0 {
      let l = (maxVal + minVal) / 2.0
      saturation = Int(round((delta / (1.0 - abs(2.0 * l - 1.0))) * 100.0))
    }

    // Hue (0-360)
    var hue: Int = 0
    if delta != 0 {
      var h: Double = 0
      if maxVal == r {
        h = 60.0 * (((g - b) / delta).truncatingRemainder(dividingBy: 6.0))
      } else if maxVal == g {
        h = 60.0 * (((b - r) / delta) + 2.0)
      } else {
        h = 60.0 * (((r - g) / delta) + 4.0)
      }
      if h < 0 {
        h += 360.0
      }
      hue = Int(round(h))
    }

    return (hue: hue, saturation: saturation, lightness: lightness)
  }
}
