//
//  PosterCell.swift
//  FlixApp
//
//  Created by Isaac on 9/19/18.
//  Copyright © 2018 Isaac. All rights reserved.
//

import UIKit

class PosterCell: UICollectionViewCell {
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie!{
        didSet {
            posterImageView.af_setImage(withURL: movie.posterUrl!)
        }
    }
}
