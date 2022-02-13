//
//  TTDLoginTestsa.swift
//  TTDLoginTestsa
//
//  Created by Nathaniel Whittington on 2/12/22.
//

import XCTest
@testable import TTDLogin

class TTDLoginTestsa: XCTestCase {
    var vm : Text?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        vm = Text()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        vm = nil
    }

    func testC(){
        
        
        XCTAssert(vm?.validateTextFieldIsEmpty(text: "car") == true)
        
    }
    
    func testV(){
        
        
        XCTAssert(vm?.validateTextFieldCount(text: "2387234543") == true)
    }
}
