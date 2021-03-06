/*
    Copyright (C) 2016 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    A view controller that demonstrates how to use a default UIToolbar.
*/

import UIKit

class DefaultToolbarViewController: UIViewController {
    // MARK: - Properties

    @IBOutlet weak var toolbar: UIToolbar!

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureToolbar()
    }

    // MARK: - Configuration

    func configureToolbar() {
        let toolbarButtonItems = [
            trashBarButtonItem,
            flexibleSpaceBarButtonItem,
            customTitleBarButtonItem
        ]

        toolbar.setItems(toolbarButtonItems, animated: true)
    }

    // MARK: - UIBarButtonItem Creation and Configuration

    var trashBarButtonItem: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(DefaultToolbarViewController.barButtonItemClicked(_:)))
    }

    var flexibleSpaceBarButtonItem: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }

    var customTitleBarButtonItem: UIBarButtonItem {
        let customTitle = NSLocalizedString("Action", comment: "")

        return UIBarButtonItem(title: customTitle, style: .plain, target: self, action: #selector(DefaultToolbarViewController.barButtonItemClicked(_:)))
    }

    // MARK: - Actions

    func barButtonItemClicked(_ barButtonItem: UIBarButtonItem) {
        NSLog("A bar button item on the default toolbar was clicked: \(barButtonItem).")
    }
}
