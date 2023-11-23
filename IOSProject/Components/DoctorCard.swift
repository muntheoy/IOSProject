import SwiftUI


struct DoctorCard: View {
    
var body: some View {
       
            VStack{
                HStack {
                    HStack{
                        
                        Image(DoctorCardStringData.photo)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: DoctorCardConfig.imageWidth, height: DoctorCardConfig.imageHeight)
                            .padding([.trailing], 10)
                        
                        VStack(alignment: .leading  ){
                            
                            Text("Dr. \(DoctorCardStringData.doctorName) \(DoctorCardStringData.doctorSurname)")
                                .foregroundColor(.white)
                                .padding(.bottom, 1)
                                .font(.custom(Fonts.bold, size: DoctorCardConfig.fontSizeBold))
                                
                            Text(DoctorCardStringData.specialty)
                                .foregroundColor(.white)
                                .font(.custom(Fonts.regular, size: DoctorCardConfig.fontSizeRegular))
                                
                        }
                    }
                    Spacer()
                    Button(action: {
                                
                    }){
                        Image(DoctorCardStringData.buttonIcon)
                            
                    }
                    
                }
                Rectangle()
                    .fill(Color.white
                        .opacity(0.15))
                    .frame(height: 1)
                    .padding(.bottom, 10)
                HStack(spacing: DoctorCardConfig.spacingBetweenIconsAndText){
                    HStack{
                        Image(DoctorCardStringData.calendarIcon)
                        Text(DoctorCardStringData.appointmentDate)
                            .foregroundColor(.white)
                            .font(.custom(Fonts.regular, size: 12))
                    }
                    
                    
                    
                    HStack{
                        Image(DoctorCardStringData.clockIcon)
                        Text(DoctorCardStringData.appointmentTime)
                            .foregroundColor(.white)
                            .font(.custom(Fonts.regular, size: 12))
                    }

                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(DoctorCardConfig.padding)
            .frame(maxWidth: .infinity)
            .background(RoundedRectangle(cornerRadius: DoctorCardConfig.cornerRadius).fill(AppColors.blueCardColor))
        }
        
        
        
}

struct DoctorCard_Previews: PreviewProvider {
static var previews: some View {
    DoctorCard()
}
}
