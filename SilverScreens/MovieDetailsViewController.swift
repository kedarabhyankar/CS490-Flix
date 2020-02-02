//
//  MovieDetailsViewController.swift
//  SilverScreens
//
//  Created by Kedar Abhyankar on 1/28/20.
//  Copyright © 2020 Kedar Abhyankar. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    var movie: [String:Any]!

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        summaryLabel.text = movie["overview"] as? String
        titleLabel.sizeToFit()
        summaryLabel.sizeToFit()
        let baseURL = "https://image.tmdb.org/t/p/w185/"
        let backdropBase = "https://image.tmdb.org/t/p/w780/"
        let posterPath = movie["poster_path"] as! String
        let backdropPath = movie["backdrop_path"] as!
        String
        let posterURL = URL(string: baseURL + posterPath)
        let backdropURL = URL(string: backdropBase +
        backdropPath)
        
        profileView.af_setImage(withURL: posterURL!)
        backdropView.af_setImage(withURL: backdropURL!)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
