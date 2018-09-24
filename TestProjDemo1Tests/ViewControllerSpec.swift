//
//  ViewControllerSpec.swift
//  TestProjDemo1Tests
//
//  Created by Will Saults on 9/23/18.
//  Copyright © 2018 AppVentures. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import TestProjDemo1

class ViewControllerSpec: QuickSpec {
    override func spec() {
        describe("ViewController") {
            var subject: ViewController!
            
            beforeEach {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                subject = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                subject.view.layoutSubviews()
            }
            
            describe("viewDidLoad", {
                context("content") {
                    it("has instruction text") {
                        expect(subject.button?.titleLabel?.text).to(equal("TAP!"))
                    }
                }
            })
            
            describe("button", {
                context("is tapped", {
                    it("changes text to 'SUH DUDE!'", closure: {
                        subject.button.sendActions(for: UIControlEvents.touchUpInside)
                        
                        expect(subject.button?.titleLabel?.text).to(equal("SUH DUDE!"))
                    })
                    
                    it("displays an image") {
                        subject.button.sendActions(for: UIControlEvents.touchUpInside)
                        
                        expect(subject.imageView?.image).toNot(beNil())
                    }
                })
            })
        }
    }
}
