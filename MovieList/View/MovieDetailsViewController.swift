//
//  MovieDetailsViewController.swift
//  MovieList
//
//  Created by Giovanna Moeller on 25/10/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    private var movie: Movie

    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackground()
        // Do any additional setup after loading the view.
    }
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
