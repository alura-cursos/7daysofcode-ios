//
//  MovieDetailsViewController.swift
//  MovieList
//
//  Created by Giovanna Moeller on 25/10/22.
//

import UIKit
import Kingfisher

class MovieDetailsViewController: UIViewController {
    
    private var movie: Movie
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = movie.title
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.font = .systemFont(ofSize: 24.0, weight: .bold)
        return label
    }()
    
    private lazy var userScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Classificação dos usuários: \(movie.voteAverage)"
        label.numberOfLines = 0
        label.textColor = .white
        label.font = .systemFont(ofSize: 16.0, weight: .bold)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = .white.withAlphaComponent(0.75)
        label.attributedText = NSAttributedString(string: movie.overview).withLineSpacing(8.0)
        return label
    }()
    
    private lazy var imagePoster: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.layer.cornerRadius = 32.0
        imgView.layer.masksToBounds = true
        return imgView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackground()
        setLayout()
        // Do any additional setup after loading the view.
    }
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
        guard let imageURL = movie.image else { return }
        imagePoster.configureImage(imageURL)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        navigationController?.navigationBar.tintColor = UIColor.white
        
        view.addSubview(titleLabel)
        view.addSubview(imagePoster)
        view.addSubview(userScoreLabel)
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32.0),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
            userScoreLabel.topAnchor.constraint(equalTo: imagePoster.bottomAnchor, constant: 32.0),
            userScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imagePoster.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imagePoster.widthAnchor.constraint(equalToConstant: 192.0),
            imagePoster.heightAnchor.constraint(equalToConstant: 264.0),
            imagePoster.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32.0),
            
            descriptionLabel.topAnchor.constraint(equalTo: userScoreLabel.bottomAnchor, constant: 32.0),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16.0),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16.0),
        ])
    }
}
