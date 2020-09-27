import UIKit

var width: Float = 3.4
var height: Float = 2.1

var bucketOfPaint: Int {
    get {
        // how many buckets I need to cover the surface?
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        return Int(roundedBuckets)
    }
    
    set {
        // which suerface can I cover with this amount of buckets of paint?
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of paint can cover an area of \(areaCanCover)")
    }
}

// call the get
print(bucketOfPaint)

// call the set
bucketOfPaint = 2
