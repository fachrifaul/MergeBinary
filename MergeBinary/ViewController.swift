//
//  ViewController.swift
//  MergeBinary
//
//  Created by Fachri Febrian on 21/01/2020.
//  Copyright © 2020 Fachri Febrian. All rights reserved.
//

import UIKit
import Core
import Feature
import UISwift
import AsyncDisplayKit
import PINCache
import Lottie
import Starscream
import SwiftPhoenixClient

class ViewController: UIViewController {
    
    private var animationView: AnimationView? // Lottie
    private var pincache: PINCache? // PINCache
    private var text: ASTextNode? // Texture / AsyncDisplayKit
    private var socket: WebSocket? //Starscream
    private var lobbyChannel: Channel? //SwiftPhoenixClient
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Dummy.dummy() // Feature
        Feature.feature() // Core
        diffing()
    }
    
    func diffing() {
        let old = [
            "a", "b", "c"
        ]
        
        let new = [
            "a", "b", "c", "d"
        ]
        
        let _ = diff(old: old, new: new) // UISwift - DeepDiff
    }
    
}

public class RadarMarkerView: MarkerView { // UISwift - Charts
    private lazy var label: UILabel = UILabel()
    
    public override func awakeFromNib() {
        self.offset.x = -self.frame.size.width / 2.0
        self.offset.y = -self.frame.size.height - 7.0
    }
    
    public override func refreshContent(entry: ChartDataEntry, highlight: Highlight) {
        label.text = String.init(format: "%d %%", Int(round(entry.y)))
        layoutIfNeeded()
    }
}

