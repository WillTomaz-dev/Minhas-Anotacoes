//
//  ViewController.swift
//  Minhas Anotações
//
//  Created by William Tomaz on 22/10/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var notesText: UITextView!
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(notesText.text, forKey: "notes")
        
    }
    @IBAction func cleanNotes(_ sender: Any) {
        notesText.text = nil
        UserDefaults.standard.removeObject(forKey: "notes")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notes = UserDefaults.standard.object(forKey: "notes") as? String
        notesText.text = notes
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { self.view.endEditing(true) }

}

