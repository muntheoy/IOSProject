import SwiftUI

struct Menu: View{
    var body: some View{
        HStack{
            MenuElement(iconImageName: MenuDataString_FirstElement.iconImageName, titleText: MenuDataString_FirstElement.titleText)
            Spacer()
            MenuElement(iconImageName: MenuDataString_SecondElement.iconImageName, titleText: MenuDataString_SecondElement.titleText)
            Spacer()
            MenuElement(iconImageName: MenuDataString_ThirdElement.iconImageName, titleText: MenuDataString_ThirdElement.titleText)
            Spacer()
            MenuElement(iconImageName:  MenuDataString_FourthElement.iconImageName, titleText:  MenuDataString_FourthElement.titleText)
            
        }
        
    }
}

struct Menu_Previews: PreviewProvider{
    static var previews: some View{
        Menu()
    }
}
