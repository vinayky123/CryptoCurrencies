//
//  CoinsListViewUITests.swift
//  CryptoCurrenciesUITests
//
//  Created by Vinay on 08/01/25.
//


import XCTest
@testable import CryptoCurrencies

final class CoinsListViewUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }

    func testCoinsViewListExists() throws{
        app.launch()
        let navBar = app.navigationBars["Crypto Currencies"]
        let navBarLabel = navBar.staticTexts["Crypto Currencies"]
        //wait for app to launch and load in max 5 seconds
        let loaded = navBarLabel.waitForExistence(timeout: 5)
        if loaded{
            XCTAssertTrue(navBarLabel.exists)
            let collectionView = app.collectionViews
            let coinText = collectionView/*@START_MENU_TOKEN@*/.staticTexts["COIN"]/*[[".cells.staticTexts[\"COIN\"]",".staticTexts[\"COIN\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            let priceText = collectionView/*@START_MENU_TOKEN@*/.staticTexts["PRICE"]/*[[".cells.staticTexts[\"PRICE\"]",".staticTexts[\"PRICE\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            XCTAssertTrue(coinText.exists)
            XCTAssertTrue(priceText.exists)
            let cells = collectionView.cells
            // check list has rows
            XCTAssertTrue(cells.element.exists)
        }else{
            XCTFail("List should be loaded")
        }
    }
    
    func testListScrollShouldWork(){
        app.launch()
        let collectionViews = XCUIApplication().collectionViews
        let firstRow = collectionViews.cells.element(boundBy: 0) // get the first row
        let initialCells = collectionViews.cells.count
        //swipe for 3 times to fetch new data
        firstRow.swipeUp()
        firstRow.swipeUp()
        sleep(1)
        firstRow.swipeUp()
        firstRow.swipeUp()
        sleep(1)
        let latestCells = collectionViews.cells.count
        XCTAssertTrue(latestCells > initialCells)
    }
}
