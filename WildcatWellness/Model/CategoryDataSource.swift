//
//  CategoryDataSource.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class CategoryDataSource: NSObject, UICollectionViewDataSource {

    //MARK: Initializers
    
    init(data: [CategoryModel]) {
        self.data = data
    }
    
    //MARK: Properties
    
    var data: [CategoryModel]
    
    //MARK: Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CategoryCollectionViewCell
        cell.configureCell(category: data[indexPath.item])
        return cell
    }
    
    
}
