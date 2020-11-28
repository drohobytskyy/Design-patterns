//
//  MainPresenterTest.swift
//  MVPTests
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import XCTest
@testable import MVP

class MockView: MainViewProtocol {
    var title: String?
    func setGreeting(greeting: String) {
        self.title = greeting
    }
}

class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!

    override func setUp() {
        view = MockView()
        person = Person(firstName: "fisrt name", lastName: "last name")
        presenter = MainPresenter(view: view, person: person)
    }

    override func tearDown() {
        view = nil
        person = nil
        presenter = nil
    }

    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(person, "person is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.title, "fisrt name last name")
    }
}
