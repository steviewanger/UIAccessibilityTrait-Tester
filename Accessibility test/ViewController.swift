//
//  ViewController.swift
//  Accessibility test
//
//  Created by Wang, Steve on 10/18/17.
//  Copyright © 2017 ClubHub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cellData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.cellData[indexPath.row].text
        cell.accessibilityTraits = viewModel.cellData[indexPath.row].trait

        return cell
    }
}

struct ViewData {
    let text: String
    let trait: UIAccessibilityTraits
}

class ViewModel {
    let cellData = [ViewData(text: "UIAccessibilityTraitNone", trait: UIAccessibilityTraitNone),
                    ViewData(text: "UIAccessibilityTraitButton", trait: UIAccessibilityTraitButton),
                    ViewData(text: "UIAccessibilityTraitLink", trait: UIAccessibilityTraitLink),
                    ViewData(text: "UIAccessibilityTraitHeader", trait: UIAccessibilityTraitHeader),
                    ViewData(text: "UIAccessibilityTraitSearchField", trait: UIAccessibilityTraitSearchField),
                    ViewData(text: "UIAccessibilityTraitImage", trait: UIAccessibilityTraitImage),
                    ViewData(text: "UIAccessibilityTraitSelected", trait: UIAccessibilityTraitSelected),
                    ViewData(text: "UIAccessibilityTraitPlaysSound", trait: UIAccessibilityTraitPlaysSound),
                    ViewData(text: "UIAccessibilityTraitKeyboardKey", trait: UIAccessibilityTraitKeyboardKey),
                    ViewData(text: "UIAccessibilityTraitStaticText", trait: UIAccessibilityTraitStaticText),
                    ViewData(text: "UIAccessibilityTraitSummaryElement", trait: UIAccessibilityTraitSummaryElement),
                    ViewData(text: "UIAccessibilityTraitNotEnabled", trait: UIAccessibilityTraitNotEnabled),
                    ViewData(text: "UIAccessibilityTraitUpdatesFrequently", trait: UIAccessibilityTraitUpdatesFrequently),
                    ViewData(text: "UIAccessibilityTraitStartsMediaSession", trait: UIAccessibilityTraitStartsMediaSession),
                    ViewData(text: "UIAccessibilityTraitAdjustable", trait: UIAccessibilityTraitAdjustable),
                    ViewData(text: "UIAccessibilityTraitAllowsDirectInteraction", trait: UIAccessibilityTraitAllowsDirectInteraction),
                    ViewData(text: "UIAccessibilityTraitCausesPageTurn", trait: UIAccessibilityTraitCausesPageTurn),
// For iOS 10 testing
//                    ViewData(text: "UIAccessibilityTraitTabBar", trait: UIAccessibilityTraitTabBar)
    ]
}

