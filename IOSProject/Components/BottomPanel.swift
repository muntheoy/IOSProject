import SwiftUI

struct BottomPanel: View {
    @Binding var selectedTab: Int

    var body: some View {
        VStack {
            
            HStack(spacing: 0) {
                BottomPanel_Button(
                    model: BottomPanelButtonModel(
                        title: "Home",
                        iconActive: "HomeIcon",
                        iconInactive: "HomeIcon",
                        assignedTab: 1),
                    selectedTab: $selectedTab)
                .padding(.horizontal)
                
                BottomPanel_Button(
                    model: BottomPanelButtonModel(
                        title: "Calender",
                        iconActive: "BottomPenelCalenderIcon",
                        iconInactive: "BottomPenelCalenderIcon",
                        assignedTab: 2),
                    selectedTab: $selectedTab)
                .padding(.horizontal)
                
                BottomPanel_Button(
                    model: BottomPanelButtonModel(
                        title: "Message",
                        iconActive: "BottomPanelMessageIcon",
                        iconInactive: "BottomPanelMessageIcon",
                        assignedTab: 3),
                    selectedTab: $selectedTab)
                .padding(.horizontal)
                
                BottomPanel_Button(
                    model: BottomPanelButtonModel(
                        title: "Profile",
                        iconActive: "BottomPanelProfileIcon",
                        iconInactive: "BottomPanelProfileIcon",
                        assignedTab: 4),
                    selectedTab: $selectedTab)
                
                
            }
            .frame(maxWidth: .infinity)
            .padding(.top)
            .background(Color.white)
            .shadow(color: AppColors.bottomPanelShadowColor, radius: 10, x: 0, y: 2)
        }
        .frame(maxWidth: .infinity)        .edgesIgnoringSafeArea(.bottom) 
    }
}

struct BottomPanel_Button: View {
    let model: BottomPanelButtonModel
       @Binding var selectedTab: Int

       var body: some View {
           Button(action: {
               selectedTab = model.assignedTab
           }) {
               HStack {
                   Image(selectedTab == model.assignedTab ? model.iconActive : model.iconInactive)
                       .resizable()
                       .scaledToFit()
                       .frame(width: BottomPanelDataConfig.iconWidth, height: BottomPanelDataConfig.iconHeight)
                   
                   if selectedTab == model.assignedTab {
                       Text(model.title)
                           .font(.custom(Fonts.regular, size: BottomPanelDataConfig.textSize))
                   }
               }
            .padding()
            .background(
                Group {
                    if selectedTab == model.assignedTab {
                        RoundedRectangle(cornerRadius: BottomPanelDataConfig.cornerRadius)
                            .fill(AppColors.blueColor.opacity(BottomPanelDataConfig.blueColorOpacity))
                    } else {
                        Color.clear
                    }
                }
            )
        }
        
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct BottomPanel_Previews: PreviewProvider{
    static var previews: some View{
        BottomPanel(selectedTab: .constant(1))
    }
}

    
