//
//  DetailViewController.swift
//  Tumblr
//
//  Created by Vivian Pham on 2/2/17.
//  Copyright © 2017 Vivian Pham. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var index: Int!

    @IBOutlet weak var pictureView: UIImageView!
    
    var post: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = ("You tapped the cell at index \(index)")

    
        // photos is NOT nil, go ahead and access element 0 and run the code in the curly braces
    
        if let photos = post["photos"] as? [NSDictionary] {
            let imageUrlString = photos[0].value(forKeyPath: "original_size.url") as? String
            if let imageUrl = URL(string: imageUrlString!){
                pictureView.setImageWith(imageUrl)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    }

