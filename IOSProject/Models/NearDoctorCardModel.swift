import SwiftUI

struct NearDoctorModel: Hashable {
    var photo: String
    var name: String
    var surname: String
    var speciality: String
    var distance: Float
    var rating: Float
    var reviewsCount: Int
    var time: String
    var fullName: String {
        return "Dr. \(name) \(surname)"
    }

    var ratingAndReviews: String {
        return "\(rating) (\(reviewsCount) Reviews)"
    }

    var openTime: String {
        return "Open at \(time)"
    }
}




