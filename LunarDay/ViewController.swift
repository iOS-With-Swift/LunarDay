//
//  ViewController.swift
//  LunarDay
//
//  Created by Lê Hồng Phong on 3/20/17.
//  Copyright © 2017 Lê Hồng Phong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblYY: UILabel!
    @IBOutlet weak var lblMM: UILabel!
    @IBOutlet weak var lblDD: UILabel!
    @IBOutlet weak var dateTimeBicker: UIDatePicker!
    @IBOutlet weak var switchbtn: UISwitch!
    @IBOutlet weak var PtoN: UILabel!	
    @IBOutlet weak var NtoP: UILabel!
    var (dd,mm,yy) = (0,0,0)
    enum SwitchStatus {
        case switchOn
        case switchOff
    }
    enum mode {
        case negToPos
        case posToNeg
    }
    var setmode: mode!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeSwitch(switchbtn)
    }

    @IBAction func changeSwitch(_ sender: UISwitch) {
        if switchbtn.isOn{
            switchDo(switchStatus: SwitchStatus.switchOn)
        }else{
            switchDo(switchStatus: SwitchStatus.switchOff)
        }
    }
    
    func switchDo(switchStatus: SwitchStatus){
        if switchStatus == .switchOn{
            PtoN.textColor = UIColor.blue
            NtoP.textColor = UIColor.black
            //view.backgroundColor=UIColor.gray
            setmode = .posToNeg
            
        }else if switchStatus == .switchOff{
            PtoN.textColor = UIColor.black
            NtoP.textColor = UIColor.blue
            //view.backgroundColor=UIColor.white
            setmode = .negToPos
        }
    }
    
    
    @IBAction func convertBtn(_ sender: UIButton) {
        splitDate(date: dateTimeBicker.date)
        jdToDate(jd: jdFromDate(date: dateTimeBicker.date))
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

