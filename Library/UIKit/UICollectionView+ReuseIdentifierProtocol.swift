//
//  UICollectionView+ReuseIdentifierProtocol.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public extension UICollectionView {
  /**
   Returns a typed reusable cell object located by its identifier
   
   - parameter identifier: The R.reuseIdentifier.* value for the specified cell.
   - parameter indexPath: The index path specifying the location of the cell. The data source receives this information when it is asked for the cell and should just pass it along. This method uses the index path to perform additional configuration based on the cell’s position in the collection view.
   
   - returns: A subclass of UICollectionReusableView or nil if the cast fails.
  */
  public func dequeueReusableCell<Identifier: ReuseIdentifierType>(withReuseIdentifier identifier: Identifier, for indexPath: IndexPath) -> Identifier.ReusableType?
    where Identifier.ReusableType: UICollectionReusableView
  {
    return dequeueReusableCell(withReuseIdentifier: identifier.identifier, for: indexPath) as? Identifier.ReusableType
  }

  /**
   Returns a typed reusable supplementary view located by its identifier and kind.
   
   - parameter elementKind: The kind of supplementary view to retrieve. This value is defined by the layout object.
   - parameter identifier: The R.reuseIdentifier.* value for the specified view.
   - parameter indexPath: The index path specifying the location of the cell. The data source receives this information when it is asked for the cell and should just pass it along. This method uses the index path to perform additional configuration based on the cell’s position in the collection view.
   
   - returns: A subclass of UICollectionReusableView or nil if the cast fails.
  */
  public func dequeueReusableSupplementaryView<Identifier: ReuseIdentifierType>(ofKind elementKind: String, withReuseIdentifier identifier: Identifier, for indexPath: IndexPath) -> Identifier.ReusableType?
    where Identifier.ReusableType: UICollectionReusableView
  {
    return dequeueReusableSupplementaryView(ofKind: elementKind, withReuseIdentifier: identifier.identifier, for: indexPath) as? Identifier.ReusableType
  }

  /**
   Register a serie of R.nib.* for use in creating new collection view cells.

   - parameter nibResources: An array of nib resources (R.nib.*) each containing a object of type UICollectionViewCell that has a reuse identifier
   */
  public func register<Resource: NibResourceType>(_ nibResources: [Resource])
    where Resource: ReuseIdentifierType, Resource.ReusableType: UICollectionViewCell
  {
    nibResources.forEach(register)
  }

  /**
   Register a R.nib.* for use in creating new collection view cells.

   - parameter nibResource: A nib resource (R.nib.*) containing a object of type UICollectionViewCell that has a reuse identifier
   */
  public func register<Resource: NibResourceType>(_ nibResource: Resource)
    where Resource: ReuseIdentifierType, Resource.ReusableType: UICollectionViewCell
  {
    register(UINib(resource: nibResource), forCellWithReuseIdentifier: nibResource.identifier)
  }

  /**
   Register a serie of R.nib.* for use in creating supplementary views for the collection view.

   - parameter nibResources: An array of nib resources (R.nib.*) each containing a object of type UICollectionReusableView. that has a reuse identifier
   */
  public func register<Resource: NibResourceType>(_ nibResources: [Resource], forSupplementaryViewOfKind kind: String)
    where Resource: ReuseIdentifierType, Resource.ReusableType: UICollectionReusableView
  {
    nibResources.forEach { self.register($0, forSupplementaryViewOfKind: kind) }
  }

  /**
   Register a R.nib.* for use in creating supplementary views for the collection view.

   - parameter nibResource: A nib resource (R.nib.*) containing a object of type UICollectionReusableView. that has a reuse identifier
   */
  public func register<Resource: NibResourceType>(_ nibResource: Resource, forSupplementaryViewOfKind kind: String)
    where Resource: ReuseIdentifierType, Resource.ReusableType: UICollectionReusableView
  {
    register(UINib(resource: nibResource), forSupplementaryViewOfKind: kind, withReuseIdentifier: nibResource.identifier)
  }
}
