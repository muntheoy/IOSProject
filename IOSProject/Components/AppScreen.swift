import SwiftUI

struct AppScreen: View {
    @State private var selectedTab = 1

    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(spacing: 0) {
                    switch selectedTab {
                    case 1:
                        HomeView()
                    case 2:
                        CalendarView()
                    case 3:
                        MessageView()
                    case 4:
                        ProfileView()
                    default:
                        EmptyView()
                    }

                    Spacer().frame(height: AppScreenDataConfig.spacingHeight)
                }
            }

            BottomPanel(selectedTab: $selectedTab)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .edgesIgnoringSafeArea(.bottom)
        }
        .padding(.bottom, AppScreenDataConfig.stackPaddingBottom)
    }
}

struct AppScreen_Previews: PreviewProvider{
    static var previews: some View{
        AppScreen()
    }
}
