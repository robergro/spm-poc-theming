//
//  SparkTypographyTests.swift
//  SparkTests
//
//  Created by louis.borlee on 20/04/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import XCTest
import Theming
@testable import Theme

final class SparkTypographyTests: XCTestCase {

    private lazy var tokens: [Theming.TypographyFontToken] = self.getAllTypographyFontTokens()

    func testUIFonts() {
        self.tokens.forEach {
            // Will trigger a fatalError if font hasn't been found
            _ = $0.uiFont
        }
    }

    func testSwiftUIFonts() {
        self.tokens.forEach {
            // Haven't found another solution yet to test if font hasn't been found
            XCTAssertFalse("\($0)".contains("unknown context"))
        }
    }

    // MARK: - Get Fonts
    private func getAllTypographyFontTokens() -> [Theming.TypographyFontToken] {
        let mirror = Mirror(reflecting: SparkTypography())
        return mirror.children.flatMap { (_, value: Any) in
            return self.getTypographyFontTokens(from: value)
        }
    }


    private func getTypographyFontTokens(from object: Any) -> [Theming.TypographyFontToken] {
        let mirror = Mirror(reflecting: object)
        return mirror.children.compactMap { (label: String?, value: Any) in
            return value as? Theming.TypographyFontToken
        }
    }
}
