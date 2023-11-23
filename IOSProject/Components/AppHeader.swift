import SwiftUI

struct AppHeader: View {
    var user: UserModel

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(AppHeaderDataString.greeting)
                    .font(.custom(Fonts.regular, size: AppHeaderDataConfig.greetingTextSize))
                    .foregroundColor(AppColors.grayTextColor)
                    
                Text("\(AppHeaderDataString.userGreeting) \(user.name)")
                    .font(.custom(Fonts.bold, size: AppHeaderDataConfig.userGreetingTextSize))
            }

            Spacer()

            Image(user.photo) 
                .resizable()
                .scaledToFit()
                .frame(width: AppHeaderDataConfig.userAvatarIconWidth, height: AppHeaderDataConfig.userAvatarIconHeight)
                .clipShape(Circle())
        }
        .padding(.horizontal)
    }
}

struct TestIOSHeader_Previews: PreviewProvider{
    static var previews: some View{
        let sampleUser = UserModel(name: "James", photo: "UserAvatar")
                AppHeader(user: sampleUser)
    }
}
