//
//  DSFontDescriptor.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//
import Foundation
import SwiftUI

public struct DSFontDescriptor {

    public let regular: (CGFloat) -> Font
    public let medium: (CGFloat) -> Font
    public let semibold: (CGFloat) -> Font
    public let bold: (CGFloat) -> Font

    public init(
        regular: @escaping (CGFloat) -> Font,
        medium: @escaping (CGFloat) -> Font,
        semibold: @escaping (CGFloat) -> Font,
        bold: @escaping (CGFloat) -> Font
    ) {
        self.regular = regular
        self.medium = medium
        self.semibold = semibold
        self.bold = bold
    }
}
