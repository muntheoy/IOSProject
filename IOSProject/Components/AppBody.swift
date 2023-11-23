import SwiftUI

struct AppBody: View {
    var body: some View {
        VStack(spacing: AppBodyDataConfig.spacing) {
            DoctorCard()
            SearchLine()
            Menu()
            NearDoctorBlock(doctors: [
                NearDoctorModel(photo: "DoctorPhoto", name: "Jo", surname: "Kit",
                                speciality: "Dental Specialist", distance: 1.2,
                                rating: 5.0, reviewsCount: 200, time: "12:00"),
                NearDoctorModel(photo: "DoctorPhoto", name: "Jo", surname: "Kit",
                                speciality: "Dental Specialist", distance: 1.2,
                                rating: 5.0, reviewsCount: 200, time: "12:00"),
                
                
            ])
            
        }
        .padding() 
    }
}

struct TestIOSBody_Previews: PreviewProvider{
    static var previews: some View{
        AppBody()
    }
}
