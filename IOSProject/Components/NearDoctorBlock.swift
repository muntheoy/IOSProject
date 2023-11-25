import SwiftUI

struct NearDoctorBlock: View {
    let doctors: [NearDoctorModel]

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(NearDoctorBlockDataString.headerText)
                    .font(.custom(Fonts.bold, size: NearDoctorBlockDataConfig.headerTextSize))
                    .padding(.leading)
                    .foregroundColor(AppColors.darckTextColor)
            }

            ForEach(doctors, id: \.self) { doctor in
                NearDoctorCard(model: doctor)
                    .padding(.bottom, NearDoctorBlockDataConfig.paddingBottom)
            }
        }
    }
}

struct NearDoctorBlock_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctorBlock(doctors: [
            NearDoctorModel(photo: "DoctorPhoto", name: "Jo", surname: "Kit",
                            speciality: "Dental Specialist", distance: 1.2,
                            rating: 5.0, reviewsCount: 200, time: "12:00"),
            
        ])
    }
}
