//
//  LevelViewController.swift
//  Sotargoda**
//
//  Created by Foundation-022 on 01/07/24.
//

import UIKit

class LevelViewController: UIViewController {

    @IBOutlet weak var Username: UILabel!
    var name = "-"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        print("levelViewController \(self.name)")
        
        if let storedName = UserDefaults.standard.string(forKey: "USER_NAME") {
            Username.text = "Welcome " + storedName
        }
        AudioManager.shared.playBackgroundMusic(fileName: "bgmusic", fileType: "wav")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    @IBAction func goHomePage(_ sender: Any) {
        AudioManager.shared.playBackgroundMusic(fileName: "click", fileType: "wav")
        dismiss(animated: true, completion: nil)
    }

    // branch test
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
