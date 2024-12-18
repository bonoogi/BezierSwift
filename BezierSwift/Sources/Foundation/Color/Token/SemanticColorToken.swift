//
//  SemanticColorToken.swift
//
//
//  Created by Tom on 4/24/24.
//

import UIKit
import SwiftUI

internal struct SemanticColorToken: BezierColorType {
  let functionalColorToken: FunctionalColorToken
  
  var lightColorToken: ColorTokenType {
    self.functionalColorToken.lightColorToken
  }
  
  var darkColorToken: ColorTokenType {
    self.functionalColorToken.darkColorToken
  }
  
  var pressedColorToken: ThemeableColorTokenType {
    self.functionalColorToken.pressedColorToken
  }
  
  init(functionalColorToken: FunctionalColorToken) {
    self.functionalColorToken = functionalColorToken
  }
}

// MARK: PrimaryBackground
extension SemanticColorToken {
  static var primaryBgNormal = SemanticColorToken(functionalColorToken: .bgBlueNormal)
  static var primaryBgLight = SemanticColorToken(functionalColorToken: .bgBlueLight)
  static var primaryBgLighter = SemanticColorToken(functionalColorToken: .bgBlueLighter)
  static var primaryBgLightest = SemanticColorToken(functionalColorToken: .bgBlueLightest)
  static var primaryBgDark = SemanticColorToken(functionalColorToken: .bgBlueDark)
  static var primaryBgTransparent = SemanticColorToken(functionalColorToken: .bgBlueTransparent)
}

// MARK: PrimaryForeground
extension SemanticColorToken {
  static var primaryFgNormal = SemanticColorToken(functionalColorToken: .fgBlueNormal)
  static var primaryFgLight = SemanticColorToken(functionalColorToken: .fgBlueLight)
  static var primaryFgDark = SemanticColorToken(functionalColorToken: .fgBlueDark)
}

// MARK: CriticalBackground
extension SemanticColorToken {
  static var criticalBgDark = SemanticColorToken(functionalColorToken: .bgRedDark)
  static var criticalBgNormal = SemanticColorToken(functionalColorToken: .bgRedNormal)
  static var criticalBgLight = SemanticColorToken(functionalColorToken: .bgRedLight)
  static var criticalBgLighter = SemanticColorToken(functionalColorToken: .bgRedLighter)
  static var criticalBgLightest = SemanticColorToken(functionalColorToken: .bgRedLightest)
  static var criticalBgTransparent = SemanticColorToken(functionalColorToken: .bgRedTransparent)
}

// MARK: CriticalForeground
extension SemanticColorToken {
  static var criticalFgNormal = SemanticColorToken(functionalColorToken: .fgRedNormal)
  static var criticalFgLight = SemanticColorToken(functionalColorToken: .fgRedLight)
  static var criticalFgDark = SemanticColorToken(functionalColorToken: .fgRedDark)
}

// MARK: WarningBackground
extension SemanticColorToken {
  static var warningBgDark = SemanticColorToken(functionalColorToken: .bgOrangeDark)
  static var warningBgNormal = SemanticColorToken(functionalColorToken: .bgOrangeNormal)
  static var warningBgLight = SemanticColorToken(functionalColorToken: .bgOrangeLight)
  static var warningBgLighter = SemanticColorToken(functionalColorToken: .bgOrangeLighter)
  static var warningBgLightest = SemanticColorToken(functionalColorToken: .bgOrangeLightest)
  static var warningBgTransparent = SemanticColorToken(functionalColorToken: .bgOrangeTransparent)
}

// MARK: WarningForeground
extension SemanticColorToken {
  static var warningFgNormal = SemanticColorToken(functionalColorToken: .fgOrangeNormal)
  static var warningFgLight = SemanticColorToken(functionalColorToken: .fgOrangeLight)
  static var warningFgDark = SemanticColorToken(functionalColorToken: .fgOrangeDark)
}

// MARK: AccentBackground
extension SemanticColorToken {
  static var accentBgDark = SemanticColorToken(functionalColorToken: .bgCobaltDark)
  static var accentBgNormal = SemanticColorToken(functionalColorToken: .bgCobaltNormal)
  static var accentBgLight = SemanticColorToken(functionalColorToken: .bgCobaltLight)
  static var accentBgLighter = SemanticColorToken(functionalColorToken: .bgCobaltLighter)
  static var accentBgLightest = SemanticColorToken(functionalColorToken: .bgCobaltLightest)
  static var accentBgTransparent = SemanticColorToken(functionalColorToken: .bgCobaltTransparent)
}

// MARK: AccentForeground
extension SemanticColorToken {
  static var accentFgNormal = SemanticColorToken(functionalColorToken: .fgCobaltNormal)
  static var accentFgLight = SemanticColorToken(functionalColorToken: .fgCobaltLight)
  static var accentFgDark = SemanticColorToken(functionalColorToken: .fgCobaltDark)
}

// MARK: SuccessForeground
extension SemanticColorToken {
  static var successBgDark = SemanticColorToken(functionalColorToken: .bgGreenDark)
  static var successBgNormal = SemanticColorToken(functionalColorToken: .bgGreenNormal)
  static var successBgLight = SemanticColorToken(functionalColorToken: .bgGreenLight)
  static var successBgLighter = SemanticColorToken(functionalColorToken: .bgGreenLighter)
  static var successBgLightest = SemanticColorToken(functionalColorToken: .bgGreenLightest)
  static var successBgTransparent = SemanticColorToken(functionalColorToken: .bgGreenTransparent)
}

// MARK: SuccessForeground
extension SemanticColorToken {
  static var successFgNormal = SemanticColorToken(functionalColorToken: .fgGreenNormal)
  static var successFgLight = SemanticColorToken(functionalColorToken: .fgGreenLight)
  static var successFgDark = SemanticColorToken(functionalColorToken: .fgGreenDark)
}
