 //
//  ViewController.swift
//  hara
//
//  Created by Harshini Raj on 15/09/21.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var nameL: UILabel!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var emaill: UILabel!
    @IBOutlet weak var genderl: UILabel!
    @IBOutlet weak var statusl: UILabel!
    @IBOutlet weak var click: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let urlString = "https://gorest.co.in/public/v1/users"
        let url = URL(string: urlString)
        guard url != nil else {
            debugPrint("url is nil")
            return
        }
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if let safeData = data {
                
                let dataString = String(data: safeData, encoding: .utf8)
                print(dataString!)
                
            
            
            if error == nil && data != nil {
                let decoder = JSONDecoder()
                do {
                    let vdata = try  decoder.decode(datum.self, from: data!)
                    
                    for  vdat in 0...19
                    {
                    let id = vdata.data[vdat].id
                    let name = vdata.data[vdat].name
                    let gender = vdata.data[vdat].gender
                    let email = vdata.data[vdat].email
                    let status = vdata.data[vdat].status
                        print(id , name, gender, email, status)
                    
                    DispatchQueue.main.async {
                        self.lable.text = "id:   \(id) ".appending(name)
                        /*self.nameL.text = "name:   \(name)"
                        self.emaill.text = "email:   \(email)"
                        self.genderl.text = "gender: \( gender)"
                        self.statusl.text = "status:   \( status)"*/
                        
                    }}
                    
                    
                    
                }
                catch{
                    debugPrint("error")
                    
    

                }}
                
}
}
        dataTask.resume()
}
}
 
