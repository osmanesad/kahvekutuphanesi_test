import SwiftUI

struct Stacklanguage2Cell: View {
    var iceceklerClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .center) {
            Text(StringConstants.kLblArabic)
                .font(FontScheme.kInterRegular(size: getRelativeHeight(24.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(303.31))
                .padding(.leading, getRelativeWidth(77.0))
            ZStack {}
                .hideNavigationBar()
                .onTapGesture {
                    iceceklerClick?()
                }
                .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(341.0),
                       alignment: .leading)
                .background(ColorConstants.LimeA100)
                .padding(.bottom, getRelativeHeight(9.0))
                .padding(.trailing, getRelativeWidth(5.0))
                .onTapGesture {}
            VStack {
                Text(StringConstants.kMsgColombiaKahves)
                    .font(FontScheme.kInterRegular(size: getRelativeHeight(24.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(47.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(257.0))
                    .padding(.horizontal, getRelativeWidth(12.0))
            }
            .frame(width: getRelativeWidth(149.0), height: getRelativeHeight(330.0),
                   alignment: .leading)
            .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                    bottomRight: 16.0)
                    .stroke(ColorConstants.Black900,
                            lineWidth: 1))
            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                       bottomRight: 16.0)
                    .fill(Color.clear.opacity(0.7)))
            .padding(.top, getRelativeHeight(20.0))
            .padding(.leading, getRelativeWidth(8.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(157.0), alignment: .leading)
    }
}

/* struct Stacklanguage2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Stacklanguage2Cell()
 }
 } */
