import SwiftUI

struct DoctorCardStringData {
    static let doctorName = "Imran"
    static let doctorSurname = "Syahir"
    static let specialty = "General Doctor"
    static let photo = "DoctorPhoto"
    static let buttonIcon = "CardButtonIcon"
    static let calendarIcon = "CardCalendarIcon"
    static let clockIcon = "CardClockIcon"
    static let appointmentDate = "Sunday, 12 June"
    static let appointmentTime = "11:00 - 12:00 AM"
}

struct DoctorCardConfig {
    static let imageWidth: CGFloat = UIScreen.main.bounds.width * 0.13
    static let imageHeight: CGFloat = imageWidth
    static let padding: CGFloat = 20
    static let cornerRadius: CGFloat = 20
    static let fontSizeRegular: CGFloat = 14
    static let fontSizeBold: CGFloat = 16
    static let spacingBetweenIconsAndText: CGFloat = 50
    
}
