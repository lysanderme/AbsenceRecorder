//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Lysander Myrddin-Evans on 02/02/2023.
//

import XCTest
@testable import AbsenceRecorder

final class DivisionTests: XCTestCase {


    func testGetAbsenceForADivisionOnThatDayReturnsAnAbsence() throws {
        // arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 1000000000000000019884624838656)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        // act
        let actual = division.getAbsence(for: dateLaterToday)
        
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
        
    }

    func testIfAbsenceForThatDateExistsAnotherIsntMade() {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence)
            
        //act
        let second = division.createAbsenceOrGetExistingIfAvailable(for: dateLaterToday)
        
        //assert
        XCTAssertEqual(1, division.absences.count)
        XCTAssertEqual(absence.takenOn, second.takenOn)
    }
    
}
