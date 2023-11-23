import SwiftUI

struct NearDoctorCard: View {
    let model: NearDoctorModel

    var body: some View {
        Button(action: {}){
            VStack {
                HStack {
                    HStack {
                        Image(model.photo)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: NearDoctorCardDataConfig.iconWidth, height: NearDoctorCardDataConfig.iconHeight)
                            .padding([.trailing], NearDoctorCardDataConfig.paddingTrailing)
                        
                        VStack(alignment: .leading) {
                            Text(model.fullName)
                                .foregroundColor(AppColors.darckTextColor)
                                .padding(.bottom, 1)
                                .font(.custom(FontsData.boldFont, size: NearDoctorCardDataConfig.doctorFullNameTextSize))
                                
                            Text(model.speciality)
                                .foregroundColor(.gray)
                                .font(.custom(Fonts.regular, size: NearDoctorCardDataConfig.doctorSpecialityTextSize))
                        }
                    }
                    Spacer()
                    HStack {
                        Image("LocationIcon")
                        Text(String(format: "%.1f KM", model.distance))
                            .foregroundColor(AppColors.grayTextColor)
                            .font(.custom(Fonts.regular, size: NearDoctorCardDataConfig.distanceTextSize))
                    }
                }
                
                HStack(spacing: NearDoctorCardDataConfig.spacing) {
                    HStack {
                        Image(NearDoctorCardDataString.retingAndReviewsIcon)
                        Text(model.ratingAndReviews)
                            .foregroundColor(.orange)
                            .font(.custom(Fonts.regular, size: NearDoctorCardDataConfig.reviewsCountTextSize))
                    }
                    
                    HStack {
                        Image(NearDoctorCardDataString.openTimeIcon)
                        Text(model.openTime)
                            .foregroundColor(.blue)
                            .font(.custom(Fonts.regular, size: NearDoctorCardDataConfig.openTimeTextSize))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(NearDoctorCardDataConfig.padding)
            .frame(maxWidth: .infinity)
            .background(RoundedRectangle(cornerRadius: NearDoctorCardDataConfig.cornerRadius).fill(Color.white))
            .shadow(color: .gray.opacity(NearDoctorCardDataConfig.shadowOpacity), radius: 3, x: 2, y: 8)
        }
        }
}

struct NearDoctorCard_Previews: PreviewProvider {
    static var previews: some View {
        let sampleModel = NearDoctorModel(photo: "DoctorPhoto", name: "Jo", surname: "Kit",
                                          speciality: "Dental Specialist", distance: 1.2,
                                          rating: 5.0, reviewsCount: 200, time: "12:00")
        NearDoctorCard(model: sampleModel)
    }
}
