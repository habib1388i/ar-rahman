//
//  ViewController.swift
//  ar rahman
//
//  Created by Muhammad Habib hidayatullah on 20/11/18.
//  Copyright © 2018 habdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func alert(_ sender: Any) {
        let isi = "anda yakin ingin keluar?"
        let alert = UIAlertController(title: "Keluar", message: isi, preferredStyle: UIAlertControllerStyle.alert)
        let pop = UIAlertAction(title: "Keluar", style: UIAlertActionStyle.destructive) { (aksi) in
            exit(0)
        }
        let cancel = UIAlertAction(title: "tidak", style: UIAlertActionStyle.cancel) { (aksi) in
            print("batal")
        }
        alert.addAction(pop)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

