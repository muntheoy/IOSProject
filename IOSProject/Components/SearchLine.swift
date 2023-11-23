import Foundation
import SwiftUI

struct SearchLine: View{
    @State private var searchText = ""
    
    var body: some View{
        VStack{
            VStack {
                       HStack {
                           Image(SearchLineDataString.searchLineIcon)
                               .foregroundColor(.gray)
                               .padding(.leading, SearchLineDataConfig.paddingLeading)
                               .padding(.horizontal, SearchLineDataConfig.paddingHorizontal)

                           TextField(SearchLineDataString.searchLineText, text: $searchText)
                               .foregroundColor(AppColors.grayTextColor)
                               .font(.custom(Fonts.regular, size: SearchLineDataConfig.searchLineTextSize))
                       }
                       
                       .padding(SearchLineDataConfig.padding)
                       .background(AppColors.searcLineColor)
                       .cornerRadius(SearchLineDataConfig.cornerRadius)
                       
                   }
            
               }
        }
    }



struct SearchLine_Previews: PreviewProvider {
static var previews: some View {
    SearchLine()
}
}
