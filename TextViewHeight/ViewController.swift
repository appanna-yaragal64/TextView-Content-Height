//
//  ViewController.swift
//  TextViewHeight
//
//  Created by Appanna Yaragal on 16/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataTextView1: UITextView!
    @IBOutlet weak var dataTextView2: UITextView!
    @IBOutlet weak var dataTextView3: UITextView!
    @IBOutlet weak var textViewHeightConstraints1: NSLayoutConstraint!
    @IBOutlet weak var textViewHeightConstraints2: NSLayoutConstraint!
    @IBOutlet weak var textViewHeightConstraints3: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "My TextView"
        dataTextView1.applyRoundCorner(radius: 8, borderWidth: 0.5, borderColor: .lightGray)
        dataTextView2.applyRoundCorner(radius: 8, borderWidth: 0.5, borderColor: .lightGray)
        dataTextView3.applyRoundCorner(radius: 8, borderWidth: 0.5, borderColor: .lightGray)
    }

    func alertController() {
        let alertViewController = UIAlertController.init(title: "Demo TextView", message: "Please add upto 250 characters only.", preferredStyle: .alert)
        alertViewController.addAction(UIAlertAction(title: "OK", style: .default, handler: { alert in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alertViewController, animated: true, completion: nil)
    }

}

extension ViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        UIView.animate(withDuration: 0.3) {
            if textView == self.dataTextView1 {
                self.textViewHeightConstraints1.constant = self.dataTextView1.contentSize.height
            } else if textView == self.dataTextView2 {
                self.textViewHeightConstraints2.constant = self.dataTextView2.contentSize.height
            } else if textView == self.dataTextView3 {
                self.textViewHeightConstraints3.constant = self.dataTextView3.contentSize.height
            }
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let editedText = textView.text + text
        if editedText.count >= 250 {
            alertController()
            return false
        }
        return true
    }
}
