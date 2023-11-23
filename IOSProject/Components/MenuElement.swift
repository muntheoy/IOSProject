import Foundation
import SwiftUI

struct MenuElement: View {
    let iconImageName: String
    let titleText: String

    var body: some View {
        Button(action: {
        }) {
            VStack {
                Image(iconImageName)
                    .foregroundColor(.white)
                    .font(.system(size: MenuElementDataConfig.imageSize))
                    .padding(MenuElementDataConfig.padding)
                    .background(Circle().fill(AppColors.menuElementColor))

                Text(titleText)
                    .foregroundColor(AppColors.grayTextColor)
                    .font(.custom(Fonts.regular, size: MenuElementDataConfig.textSize))
            }
        }
    }
}

struct MenuElement_Previews: PreviewProvider{
    static var previews: some View{
        MenuElement(iconImageName: MenuDataString_FirstElement.iconImageName, titleText: MenuDataString_FirstElement.titleText)
    }
}
