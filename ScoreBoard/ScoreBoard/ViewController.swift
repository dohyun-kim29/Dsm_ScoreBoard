//
//  ViewController.swift
//  ScoreBoard
//
//  Created by 김도현 on 01/05/2019.
//  Copyright © 2019 김도현. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var lblRedScore: UILabel!
    @IBOutlet weak var lblWhiteScore: UILabel!
    @IBOutlet weak var lblPurpleScore: UILabel!
    @IBOutlet weak var lblGreenScore: UILabel!
    @IBOutlet weak var lblOrangeScore: UILabel!
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sound = Bundle.main.path(forResource: "bell", ofType: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch {
            
            print(error)
        }
            
    }
    
    var redscore : Int = 0
    var whitescore : Int = 0
    var purplescore : Int = 0
    var greenscore : Int = 0
    var orangescore : Int = 0
    
    @IBAction func btnRedUp(_ sender: Any) {
        
        
        redscore += 1
        if redscore < 0 {
            redscore = 0
        }
        lblRedScore.text = String(redscore)
        
        
    }
    
    @IBAction func btnRedDown(_ sender: Any) {
        
        redscore -= 1
        if redscore < 0 {
            redscore = 0
        }
        lblRedScore.text = String(redscore)
    }
    
    @IBAction func btnWhiteUp(_ sender: Any) {
        
        whitescore += 1
        if whitescore < 0 {
            whitescore = 0
        }
        lblWhiteScore.text = String(whitescore)
    }
    
    @IBAction func btnWhiteDown(_ sender: Any) {
        whitescore -= 1
        if whitescore < 0 {
            whitescore = 0
        }
        lblWhiteScore.text = String(whitescore)
    }
    
    @IBAction func btnPurpleUp(_ sender: Any) {
        purplescore += 1
        if purplescore < 0 {
            purplescore = 0
        }
        lblPurpleScore.text = String(purplescore)
    }
    
    @IBAction func btnPurpleDown(_ sender: Any) {
        purplescore -= 1
        if purplescore < 0 {
            purplescore = 0
        }
        lblPurpleScore.text = String(purplescore)
    }
    
    @IBAction func btnGreenUp(_ sender: Any) {
        greenscore += 1
        if greenscore < 0 {
            greenscore = 0
        }
        lblGreenScore.text = String(greenscore)
    }
    
    @IBAction func btnGreenDown(_ sender: Any) {
        greenscore -= 1
        if greenscore < 0 {
            greenscore = 0
        }
        lblGreenScore.text = String(greenscore)
    }
    
    @IBAction func btnOrangeUp(_ sender: Any) {
        orangescore += 1
        if orangescore < 0 {
            orangescore = 0
        }
              lblOrangeScore.text = String(orangescore)
    }
    
    @IBAction func btnOrangeDown(_ sender: Any) {
        orangescore -= 1
        if orangescore < 0 {
            orangescore = 0
        }
        lblOrangeScore.text = String(orangescore)
    }
    
    @IBAction func btnReset(_ sender: Any) {
        
        redscore = 0
        whitescore = 0
        greenscore = 0
        orangescore = 0
        purplescore = 0
        lblRedScore.text = String(redscore)
        lblWhiteScore.text = String(whitescore)
        lblPurpleScore.text = String(purplescore)
        lblOrangeScore.text = String(orangescore)
        lblGreenScore.text = String(greenscore)
        audioPlayer.play()
    }
    
    
}

        




