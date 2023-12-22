//
//  Auto_Layout_C_al_s_mas_UITestsLaunchTests.swift
//  Auto Layout ÇalışmasıUITests
//
//  Created by Ömer Özyılmaz on 12.12.2023.
//

import XCTest

final class Auto_Layout_C_al_s_mas_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
