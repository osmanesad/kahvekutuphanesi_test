import SwiftUI

struct KtphaneView: View {
    @StateObject var ktphaneViewModel = KtphaneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    VStack {
                        Text(StringConstants.kLblKTPhane)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(123.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(11.0))
                        ZStack(alignment: .center) {
                            VStack {
                                Text(StringConstants.kLblEkirdekler)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(24.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(130.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(24.0))
                                    .padding(.horizontal, getRelativeWidth(21.0))
                            }
                            .frame(width: getRelativeWidth(341.0), height: getRelativeHeight(154.0),
                                   alignment: .leading)
                            .background(ColorConstants.Bluegray50)
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(330.0),
                                       height: getRelativeHeight(151.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                        bottomLeft: 16.0, bottomRight: 16.0)
                                        .stroke(ColorConstants.Black900,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.horizontal, getRelativeWidth(6.0))
                                .onTapGesture {
                                    ktphaneViewModel.nextScreen = "EkirdeklerView"
                                }
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(341.0), height: getRelativeHeight(161.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(22.0))
                        ZStack(alignment: .center) {
                            VStack {
                                Text(StringConstants.kLblKahveEItleri)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(24.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(170.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(34.0))
                                    .padding(.horizontal, getRelativeWidth(21.0))
                            }
                            .frame(width: getRelativeWidth(341.0), height: getRelativeHeight(154.0),
                                   alignment: .topLeading)
                            .background(ColorConstants.Bluegray50)
                            .padding(.bottom, getRelativeHeight(10.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(330.0),
                                       height: getRelativeHeight(151.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                        bottomLeft: 16.0, bottomRight: 16.0)
                                        .stroke(ColorConstants.Black900,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(6.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(341.0), height: getRelativeHeight(164.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(22.0))
                        HStack {
                            ZStack(alignment: .center) {
                                VStack {
                                    Text(StringConstants.kLblAraLar)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(24.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(81.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(29.0))
                                        .padding(.horizontal, getRelativeWidth(23.0))
                                }
                                .frame(width: getRelativeWidth(155.0),
                                       height: getRelativeHeight(154.0), alignment: .topLeading)
                                .background(ColorConstants.Bluegray50)
                                .padding(.bottom, getRelativeHeight(7.0))
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(147.0),
                                           height: getRelativeHeight(151.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                            bottomLeft: 16.0, bottomRight: 16.0)
                                            .stroke(ColorConstants.Black900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                               bottomLeft: 16.0, bottomRight: 16.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(3.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(161.0),
                                   alignment: .center)
                            Spacer()
                            ZStack(alignment: .center) {
                                VStack {
                                    Text(StringConstants.kLblKahveYap)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(24.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(68.0),
                                               height: getRelativeHeight(52.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(29.0))
                                        .padding(.horizontal, getRelativeWidth(24.0))
                                }
                                .frame(width: getRelativeWidth(155.0),
                                       height: getRelativeHeight(154.0), alignment: .center)
                                .background(ColorConstants.Bluegray50)
                                .padding(.bottom, getRelativeHeight(7.0))
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(147.0),
                                           height: getRelativeHeight(151.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                            bottomLeft: 16.0, bottomRight: 16.0)
                                            .stroke(ColorConstants.Black900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                               bottomLeft: 16.0, bottomRight: 16.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(10.04))
                                    .padding(.horizontal, getRelativeWidth(3.94))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(161.0),
                                   alignment: .center)
                        }
                        .frame(width: getRelativeWidth(331.0), height: getRelativeHeight(161.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.horizontal, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(341.0), height: getRelativeHeight(575.0),
                           alignment: .topLeading)
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(673.66))
                        .padding(.leading, getRelativeWidth(7.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(341.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(95.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: EkirdeklerView(),
                                   tag: "EkirdeklerView",
                                   selection: $ktphaneViewModel.nextScreen,
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
        .onAppear {
            ktphaneViewModel.nextScreen = "EkirdeklerView"
        }
    }
}

struct KtphaneView_Previews: PreviewProvider {
    static var previews: some View {
        KtphaneView()
    }
}
