//
//  ViewController.swift
//  MovieAppIT315
//
//  Created by Namita Kekre on 10/21/20.
//  Copyright © 2020 nkekre Org. All rights reserved.
//
//  This app is developed as an educational project. Certain materials are included under the
//  fair use exemption of the U.S. Copyright Law and have been prepared according to the multimedia
//  fair use guidelines and are restricted from further use.
//
//  The purpose of this app is to allow indecisive movie watchers to find a movie on netflix
//  based on the genre (this is due to the fact that many theatres are closed to covid). Due to the enormous amount of movie options
//  on Netflix, this app will narrow down the top picks for each genre based on audience reviews, and
//  present them to the app user. The movie options will appear randomly, and the user may favorite (or like) an option that
//  they might enjoy watching. Link's to the movie trailer will be provided for additional help in
//  decision making!

import UIKit

class Global {
    var selectedOption = ""
}

let global = Global()

class ViewController: UIViewController {
    
    @IBOutlet weak var genreTextField: UITextField!
    
    @IBAction func showMoviesBtn(_ sender: Any) {
        print("Button pressed")
        self.performSegue(withIdentifier:"SecondViewSegue", sender:self)
    }
    
    let genre = ["Comedy", "Horror", "Romance", "Action"]

    var genrePickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        genreTextField.inputView = genrePickerView
        //genreTextField.placeholder = "Select a genre"
        genreTextField.attributedPlaceholder = NSAttributedString(string: "Select a genre",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        genreTextField.textAlignment = .center
        genrePickerView.delegate = self
        genrePickerView.dataSource = self
    }
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genre.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genre[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genreTextField.text = genre[row]
        global.selectedOption = genre[row]
        genreTextField.resignFirstResponder()
    }
}

