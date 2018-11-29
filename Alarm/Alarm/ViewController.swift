//
//  ViewController.swift
//  Alarm
//
//  Created by Inno on 27/11/2018.
//  Copyright © 2018 Inno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {


    @IBOutlet weak var timePickerView: UIPickerView!
    
    @IBOutlet weak var presentTimeLabel: UILabel!
    
    
    var noonArray = ["오전", "오후"]
    
    var hourArray = ["1시","2시","3시","4시","5시","6시","7시","8시","9시","10시","11시","12시"]
    var minuteArray = ["1분","2분","3분","4분","5분","6분","7분","8분","9분","10분","11분","12분","13분","14분","15분","16분","17분","18분","19분","20분","21분","22분","23분","24분","25분","26분","27분","28분","29분","30분","31분","32분","33분","34분","35분","36분","37분","38분","39분","40분","41분","42분","43분","44분","45분","46분","47분","48분","49분","50분","51분","52분","53분","54분","55분","56분","57분","58분","59분","60분"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timePickerView.dataSource = self
        timePickerView.delegate = self

        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let currentTimeString = formatter.string(from: Date())
        print(currentTimeString)
    
    presentTimeLabel.text! = currentTimeString
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var number = 0
        if component == 0 {
            number = noonArray.count
        } else if component == 1 {
            number = hourArray.count
        } else if component == 2 {
            number = minuteArray.count
        }
        return number
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var string = ""
        if component == 0 {
            string = noonArray[row]
        } else if component == 1 {
            string = hourArray[row]
        } else if component == 2 {
            string = minuteArray[row]
        }
        return string
    }



}
