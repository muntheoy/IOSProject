import SwiftUI

struct HomeView: View{
    var body: some View{
        VStack(spacing: 0) {
            AppHeader(user: UserModel(name: "James", photo: "UserAvatar"))
                .padding(.bottom, AppScreenDataConfig.headerPaddingBottom)
            AppBody()
            Spacer().frame(height: AppScreenDataConfig.spacingHeight)
        }
    }
}

struct CalendarView: View {
    var body: some View {
        Text("Calendar Content")
        
    }
}

struct MessageView: View {
    var body: some View {
        Text("Message Content")
        
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile Content")
        
    }
}
