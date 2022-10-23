import SwiftUI

struct LatinAmerikaOneView: View {
    @StateObject var latinAmerikaOneViewModel = LatinAmerikaOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            HStack {
                                Image("img_vector")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeHeight(39.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(4.0))
                                    .onTapGesture {
                                        latinAmerikaOneViewModel.nextScreen = "LatinAmerikaView"
                                    }
                                Spacer()
                                HStack {
                                    Text(StringConstants.kLblKTPhane2)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(90.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .onTapGesture {
                                            latinAmerikaOneViewModel.nextScreen = "KtphaneView"
                                        }
                                    Text(StringConstants.kMsgColombiaKahves2)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.trailing)
                                        .frame(width: getRelativeWidth(67.0),
                                               height: getRelativeHeight(32.0),
                                               alignment: .topTrailing)
                                        .padding(.leading, getRelativeWidth(43.0))
                                }
                                .frame(width: getRelativeWidth(201.0),
                                       height: getRelativeHeight(32.0), alignment: .bottom)
                                .padding(.top, getRelativeHeight(12.0))
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(44.0),
                               alignment: .leading)
                        .padding(.trailing, getRelativeWidth(12.0))
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                HStack {
                                    ZStack(alignment: .center) {
                                        Text(StringConstants.kLblArabic)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(24.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(73.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(303.31))
                                            .padding(.leading, getRelativeWidth(77.0))
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(154.0),
                                                   height: getRelativeHeight(341.0),
                                                   alignment: .center)
                                            .background(ColorConstants.LimeA100)
                                            .padding(.bottom, getRelativeHeight(9.0))
                                            .padding(.trailing, getRelativeWidth(5.0))
                                        VStack {
                                            Text(StringConstants.kMsgColombiaKahves2)
                                                .font(FontScheme
                                                    .kInterRegular(size: getRelativeHeight(24.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(105.0),
                                                       height: getRelativeHeight(47.0),
                                                       alignment: .topLeading)
                                                .padding(.vertical, getRelativeHeight(257.0))
                                                .padding(.horizontal, getRelativeWidth(12.0))
                                        }
                                        .frame(width: getRelativeWidth(151.0),
                                               height: getRelativeHeight(330.0),
                                               alignment: .bottomTrailing)
                                        .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                bottomLeft: 16.0, bottomRight: 16.0)
                                                .stroke(ColorConstants.Black900,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.top, getRelativeHeight(20.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(159.0),
                                           height: getRelativeHeight(350.0), alignment: .center)
                                    Spacer()
                                    Image("img_icecekler")
                                        .resizable()
                                        .frame(width: getRelativeWidth(154.0),
                                               height: getRelativeHeight(341.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0))
                                        .padding(.bottom, getRelativeHeight(8.0))
                                }
                                .frame(width: getRelativeWidth(330.0),
                                       height: getRelativeHeight(350.0), alignment: .leading)
                                Text(StringConstants.kMsgKahveninKeFed)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(550.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(14.0))
                                    .padding(.leading, getRelativeWidth(7.0))
                                    .padding(.trailing, getRelativeWidth(11.0))
                            }
                            .frame(width: getRelativeWidth(330.0), alignment: .topLeading)
                        }
                        .padding(.trailing, getRelativeWidth(7.0))
                    }
                    .frame(width: getRelativeWidth(338.0), height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(50.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(50.0),
                           alignment: .leading)
                }
                .frame(width: getRelativeWidth(338.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: KtphaneView(),
                                   tag: "KtphaneView",
                                   selection: $latinAmerikaOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LatinAmerikaView(),
                                   tag: "LatinAmerikaView",
                                   selection: $latinAmerikaOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LatinAmerikaOneView_Previews: PreviewProvider {
    static var previews: some View {
        LatinAmerikaOneView()
    }
}
