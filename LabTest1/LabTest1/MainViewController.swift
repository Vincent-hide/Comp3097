//
//  ViewController.swift
//  LabTest1
//
//  Created by Tech on 2021-02-09.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var n1: UILabel!
    @IBOutlet weak var n2: UILabel!
    @IBOutlet weak var n3: UILabel!
    @IBOutlet weak var n4: UILabel!
    @IBOutlet weak var n5: UILabel!
    @IBOutlet weak var n6: UILabel!
    
    var labelArr: [UILabel] = [n1, n2, n3, n4, n5, n6];
    @IBOutlet weak var aboutBtn: UIButton!
    @IBOutlet weak var drawBtn: UIButton!
    @IBOutlet weak var clearBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        aboutBtn.layer.cornerRadius = aboutBtn.frame.width / 2;
        drawBtn.layer.cornerRadius = 16;
        clearBtn.layer.cornerRadius = 16;
    }
    
    func checkDuplicate(_ rand: Int) -> Bool {
        let randString = String(rand);
        if(randString == n1.text || randString == n2.text || randString == n3.text || randString == n4.text || randString == n5.text || randString == n6.text) {
            return false;
        }
        return true;
    }
    
    func generateRand() -> String {
        var rand = Int.random(in: 1...65);
        var check = checkDuplicate(rand);
        
        while(!check) {
            rand = Int.random(in: 1...65);
            check = checkDuplicate(rand);
        }
        
        return String(rand);
    }

    @IBAction func clearClicked(_ sender: UIButton) {
        n1.text = "-";
        n2.text = "-";
        n3.text = "-";
        n4.text = "-";
        n5.text = "-";
        n6.text = "-";
    }
    
    @IBAction func drawClicked(_ sender: UIButton) {
        n1.text = generateRand();
        n2.text = generateRand();
        n3.text = generateRand();
        n4.text = generateRand();
        n5.text = generateRand();
        n6.text = generateRand();
    }
}

