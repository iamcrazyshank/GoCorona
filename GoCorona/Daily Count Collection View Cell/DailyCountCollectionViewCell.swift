//
//  DailyCountCollectionViewCell.swift
//  GoCorona
//
//  Created by Shashank Chandran on 5/2/20.
//  Copyright © 2020 Shashank Chandran. All rights reserved.
//

import UIKit

class DailyCountCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var CustomCellView: CustomViewDesignable!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var Count: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
