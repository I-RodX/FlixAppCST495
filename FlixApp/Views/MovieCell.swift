//
//  MovieCell.swift
//  FlixApp
//
//  Created by Isaac on 9/11/18.
//  Copyright © 2018 Isaac. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie!{
        didSet {
            titleLabel.text = "Hello world"//movie.title
            overviewLabel.text = "Hello World" //movie.overview
            
            posterImageView.af_setImage(withURL: movie.posterUrl!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
