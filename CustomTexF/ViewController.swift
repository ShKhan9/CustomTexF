//
//  ViewController.swift
//  CustomTexF
//
//  Created by AMIT on 7/11/18.
//  Copyright © 2018 com.hgdhghdgfd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
      
        let vc = jjViewController.init(nibName: "jjViewController", bundle: nil)
        
        self.present(vc, animated: false, completion: nil)
        
        
    }
    
    

}



@IBDesignable class CustomUITextField: UITextField, UITextFieldDelegate{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        self.delegate = self
    }
    
    //getting Called
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("textFieldDidBeginEditing")
    }
    
    //getting Called
    func textFieldDidEndEditing(_ textField: UITextField){
        
        print("textFieldDidEndEditing")
    }
    
    //Not getting Called
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("ddsdsdsds")
        return true
        
    }
    
}


