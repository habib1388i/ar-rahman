//
//  Cuk2ViewController.swift
//  ar rahman
//
//  Created by Muhammad Habib hidayatullah on 21/11/18.
//  Copyright © 2018 habdev. All rights reserved.
//

import UIKit
import AVFoundation
class Cuk2ViewController: UIViewController {
    var player:AVAudioPlayer = AVAudioPlayer()
   
    @IBAction func play(_ sender: AnyObject)
    {
    player.play()
    }
    
    @IBAction func pause(_ sender: AnyObject)
    {
    player.pause()
    }
    
    @IBAction func replay(_ sender: AnyObject)
    {
    player.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "ru2", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL (fileURLWithPath: audioPath!)as URL)
            
        }
        catch
        {
            //eror
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
 
        
        
        
        
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
