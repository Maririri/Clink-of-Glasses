//
//  ViewController.swift
//  ClinkOfGlasses
//
//  Created by Maria Baburina on 01/12/14.
//  Copyright (c) 2014 Maria Baburina. All rights reserved.
//


import UIKit
import AVFoundation


class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer = AVAudioPlayer()
    var pickerSet = ["Champaign", "Wine", "Whiskey", "Hooch"]

//    Have no clue why all this picker staff is needed (in examples from sof)
    @IBOutlet var picker: UIView!
//    picker.delegate = self
//    picker.dataSource = self

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTouch(sender: AnyObject) {
        var error:NSError?
        var clinkSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("glasses_tumblers_x2_clink_004", ofType: "mp3")!)

        audioPlayer = AVAudioPlayer(contentsOfURL: clinkSound, error: &error)
        audioPlayer.play()
    }

}

extension ViewController: UIPickerViewDataSource {

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerSet.count
    }
}

extension ViewController: UIPickerViewDelegate {

    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerSet[row]
    }
}
