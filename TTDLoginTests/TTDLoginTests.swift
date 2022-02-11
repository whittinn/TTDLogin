//
//  TTDLoginTests.swift
//  TTDLoginTests
//
//  Created by Nathaniel Whittington on 2/10/22.
//

import XCTest
@testable import TTDLogin

class TTDLoginTests: XCTestCase {
    
    var vm : ViewController?

    override func setUpWithError() throws {
        vm = ViewController()
    }

    override func tearDownWithError() throws {
       vm = nil
    }

    func testForText(){
        
        let text = vm?.userTField.text?.count
        
        XCTAssertEqual(text, nil)
        
        
    }
}
