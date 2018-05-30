//
//  ViewController.swift
//  DemoSlideMenu
//
//  Created by tham gia huy on 5/29/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var pokedexMenu: UIView!
    @IBOutlet weak var pokedex: UIImageView!
    var pokedexMenuisVisible: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leadingC.constant = -128
        trailingC.constant = 415
    }
    
    @IBAction func buttonTapped(_ sender: UIBarButtonItem) {
        if !pokedexMenuisVisible {
            leadingC.constant = 0
            trailingC.constant = 287
            pokedexMenuisVisible = true
        } else {
            leadingC.constant = -128
            trailingC.constant = 415
            pokedexMenuisVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
            })
    }
    
    @IBAction func tapToReturn(_ sender: UITapGestureRecognizer) {
        leadingC.constant = -128
        trailingC.constant = 415
        pokedexMenuisVisible = false
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

