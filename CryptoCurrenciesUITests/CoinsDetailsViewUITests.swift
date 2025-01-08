//
//  CoinsDetailsViewUITests.swift
//  CryptoCurrenciesUITests
//
//  Created by Vinay on 08/01/25.
//


import XCTest
@testable import CryptoCurrencies

final class CoinsDetailsViewUITests: XCTestCase {
    
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
    
    func testCoinDetailsViewShouldLoad(){
        app.launch()
        let navBar = app.navigationBars["Crypto Currencies"]
        let navBarLabel = navBar.staticTexts["Crypto Currencies"]
        //wait for app to launch and load in max 5 seconds
        let loaded = navBarLabel.waitForExistence(timeout: 5)
        if loaded{
            XCTAssertTrue(navBarLabel.exists)
            let collectionView = app.collectionViews
            let cells = collectionView.cells
            // check list has rows
            XCTAssertTrue(cells.element.exists)
            // Tap on the first row
            let firstRow = collectionView.buttons["row-0"]
            XCTAssertTrue(firstRow.exists)
            firstRow.tap()
            sleep(2)
            //check detailed view exists
            let coinImageView = app.images["coinsDetailImage"]
            let coinDescription = app/*@START_MENU_TOKEN@*/.staticTexts["coinDescriptionView"]/*[[".staticTexts[\"Bitcoin is the first successful internet money based on peer-to-peer technology; whereby no central bank or authority is involved in the transaction and production of the Bitcoin currency. It was created by an anonymous individual\/group under the name, Satoshi Nakamoto. The source code is available publicly as an open source project, anybody can look at it and be part of the developmental process.\\r\\n\\r\\nBitcoin is changing the way we see money as we speak. The idea was to produce a means of exchange, independent of any central authority, that could be transferred electronically in a secure, verifiable and immutable way. It is a decentralized peer-to-peer internet currency making mobile payment easy, very low transaction fees, protects your identity, and it works anywhere all the time with no central authority and banks.\\r\\n\\r\\nBitcoin is designed to have only 21 million BTC ever created, thus making it a deflationary currency. Bitcoin uses the <a href=\\\"https:\/\/www.coingecko.com\/en?hashing_algorithm=SHA-256\\\">SHA-256<\/a> hashing algorithm with an average transaction confirmation time of 10 minutes. Miners today are mining Bitcoin using ASIC chip dedicated to only mining Bitcoin, and the hash rate has shot up to peta hashes.\\r\\n\\r\\nBeing the first successful online cryptography currency, Bitcoin has inspired other alternative currencies such as <a href=\\\"https:\/\/www.coingecko.com\/en\/coins\/litecoin\\\">Litecoin<\/a>, <a href=\\\"https:\/\/www.coingecko.com\/en\/coins\/peercoin\\\">Peercoin<\/a>, <a href=\\\"https:\/\/www.coingecko.com\/en\/coins\/primecoin\\\">Primecoin<\/a>, and so on.\\r\\n\\r\\nThe cryptocurrency then took off with the innovation of the turing-complete smart contract by <a href=\\\"https:\/\/www.coingecko.com\/en\/coins\/ethereum\\\">Ethereum<\/a> which led to the development of other amazing projects such as <a href=\\\"https:\/\/www.coingecko.com\/en\/coins\/eos\\\">EOS<\/a>, <a href=\\\"https:\/\/www.coingecko.com\/en\/coins\/tron\\\">Tron<\/a>, and even crypto-collectibles such as <a href=\\\"https:\/\/www.coingecko.com\/buzz\/ethereum-still-king-dapps-cryptokitties-need-1-billion-on-eos\\\">CryptoKitties<\/a>.\"]",".staticTexts[\"coinDescriptionView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            XCTAssertTrue(coinImageView.exists)
            XCTAssertTrue(coinDescription.exists)
        }else{
            XCTFail("List should be loaded")
        }
    }

}
