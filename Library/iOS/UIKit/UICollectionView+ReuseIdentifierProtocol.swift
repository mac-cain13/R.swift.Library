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
  public func dequeueReusableCellWithReuseIdentifier<Identifier: ReuseIdentifierType where Identifier.ReusableType: UICollectionReusableView>(identifier: Identifier, forIndexPath indexPath: NSIndexPath) -> Identifier.ReusableType? {
    return dequeueReusableCellWithReuseIdentifier(identifier.identifier, forIndexPath: indexPath) as? Identifier.ReusableType
  }

  /**
   Returns a typed reusable supplementary view located by its identifier and kind.
   
   - parameter elementKind: The kind of supplementary view to retrieve. This value is defined by the layout object.
   - parameter identifier: The R.reuseIdentifier.* value for the specified view.
   - parameter indexPath: The index path specifying the location of the cell. The data source receives this information when it is asked for the cell and should just pass it along. This method uses the index path to perform additional configuration based on the cell’s position in the collection view.
   
   - returns: A subclass of UICollectionReusableView or nil if the cast fails.
  */
  public func dequeueReusableSupplementaryViewOfKind<Identifier: ReuseIdentifierType where Identifier.ReusableType: UICollectionReusableView>(elementKind: String, withReuseIdentifier identifier: Identifier, forIndexPath indexPath: NSIndexPath) -> Identifier.ReusableType? {
    return dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier.identifier, forIndexPath: indexPath) as? Identifier.ReusableType
  }

  /**
   Register a serie of R.nib.* for use in creating new collection view cells.

   - parameter nibResources: An array of nib resources (R.nib.*) each containing a object of type UICollectionViewCell that has a reuse identifier
   */
  public func registerNibs<Resource: NibResourceType where Resource: ReuseIdentifierType, Resource.ReusableType: UICollectionViewCell>(nibResources: [Resource]) {
    nibResources.forEach(registerNib)
  }

  /**
   Register a R.nib.* for use in creating new collection view cells.

   - parameter nibResource: A nib resource (R.nib.*) containing a object of type UICollectionViewCell that has a reuse identifier
   */
  public func registerNib<Resource: NibResourceType where Resource: ReuseIdentifierType, Resource.ReusableType: UICollectionViewCell>(nibResource: Resource) {
    registerNib(UINib(resource: nibResource), forCellWithReuseIdentifier: nibResource.identifier)
  }

  /**
   Register a serie of R.nib.* for use in creating supplementary views for the collection view.

   - parameter nibResources: An array of nib resources (R.nib.*) each containing a object of type UICollectionReusableView. that has a reuse identifier
   */
  public func registerNibs<Resource: NibResourceType where Resource: ReuseIdentifierType, Resource.ReusableType: UICollectionReusableView>(nibResources: [Resource], forSupplementaryViewOfKind kind: String) {
    nibResources.forEach { self.registerNib($0, forSupplementaryViewOfKind: kind) }
  }

  /**
   Register a R.nib.* for use in creating supplementary views for the collection view.

   - parameter nibResource: A nib resource (R.nib.*) containing a object of type UICollectionReusableView. that has a reuse identifier
   */
  public func registerNib<Resource: NibResourceType where Resource: ReuseIdentifierType, Resource.ReusableType: UICollectionReusableView>(nibResource: Resource, forSupplementaryViewOfKind kind: String) {
    registerNib(UINib(resource: nibResource), forSupplementaryViewOfKind: kind, withReuseIdentifier: nibResource.identifier)
  }
}
