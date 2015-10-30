//
//  UsbongTreeViewer.swift
//  UsbongFramework
//
//  Created by Chris Amanse on 10/24/15.
//  Copyright © 2015 Usbong Social Systems, Inc. All rights reserved.
//

import Foundation

//public class UsbongTreeViewer {
//    public static func presentTreeViewControllerFromViewController(viewController: UIViewController, withZipURL zipURL: NSURL, animated: Bool, completion: (() -> Void)?) -> TreeViewController {
//        let initialVC = TreeViewController.loadFromStoryboard()
//        let treeVC = initialVC.topViewController as! TreeViewController
//        
//        treeVC.treeZipURL = zipURL
//        
//        viewController.presentViewController(initialVC, animated: animated, completion: completion)
//        
//        return treeVC
//    }
//}

public protocol UsbongTreeViewerDelegate: class {
}
public class UsbongTreeViewer {
    public weak var delegate: UsbongTreeViewerDelegate?
    
    public var treeZipURL: NSURL
    
    public init(treeZipURL: NSURL) {
        self.treeZipURL = treeZipURL
    }
    
    public func presentTreeViewControllerFromViewController(viewController: UIViewController, animated: Bool, completion: (() -> Void)?) -> TreeViewController {
        let initialVC = TreeViewController.loadFromStoryboard()
        let treeVC = initialVC.topViewController as! TreeViewController
        
        treeVC.treeZipURL = treeZipURL
        
        viewController.presentViewController(initialVC, animated: true, completion: nil)
        
        return treeVC
    }
}