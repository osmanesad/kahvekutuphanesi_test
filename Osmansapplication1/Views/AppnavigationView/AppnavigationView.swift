import SwiftUI

struct AppnavigationView: View {
    @StateObject var appnavigationViewModel = AppnavigationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kLblAppNavigation)
                            .font(Font.system(size: getRelativeHeight(20.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        Text(StringConstants.kMsgCheckYourApp)
                            .font(Font.system(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(20.0))
                        Divider()
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Black900)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(67.0))
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            VStack {
                                Text(StringConstants.kLblKTPhane)
                                    .font(Font.system(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                Divider()
                                    .frame(width: getRelativeWidth(375.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Bluegray400)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .onTapGesture {
                                appnavigationViewModel.nextScreen = "KtphaneView"
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(48.0))
                            .background(ColorConstants.WhiteA700)
                            VStack {
                                Text(StringConstants.kLblEkirdekler)
                                    .font(Font.system(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                Divider()
                                    .frame(width: getRelativeWidth(375.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Bluegray400)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .onTapGesture {
                                appnavigationViewModel.nextScreen = "EkirdeklerView"
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(48.0))
                            .background(ColorConstants.WhiteA700)
                            VStack {
                                Text(StringConstants.kLblFiltreKahve)
                                    .font(Font.system(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                Divider()
                                    .frame(width: getRelativeWidth(375.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Bluegray400)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .onTapGesture {
                                appnavigationViewModel.nextScreen = "FiltreKahveView"
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(48.0))
                            .background(ColorConstants.WhiteA700)
                            VStack {
                                Text(StringConstants.kLblLatinAmerika)
                                    .font(Font.system(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                Divider()
                                    .frame(width: getRelativeWidth(375.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Bluegray400)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .onTapGesture {
                                appnavigationViewModel.nextScreen = "LatinAmerikaView"
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(48.0))
                            .background(ColorConstants.WhiteA700)
                            VStack {
                                Text(StringConstants.kMsgLatinAmerikaO)
                                    .font(Font.system(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(23.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                Divider()
                                    .frame(width: getRelativeWidth(375.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Bluegray400)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .onTapGesture {
                                appnavigationViewModel.nextScreen = "LatinAmerikaOneView"
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(48.0))
                            .background(ColorConstants.WhiteA700)
                        }
                        .frame(width: getRelativeWidth(375.0))
                        .background(ColorConstants.WhiteA700)
                    }
                }
                .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: KtphaneView(),
                                   tag: "KtphaneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EkirdeklerView(),
                                   tag: "EkirdeklerView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FiltreKahveView(),
                                   tag: "FiltreKahveView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LatinAmerikaView(),
                                   tag: "LatinAmerikaView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LatinAmerikaOneView(),
                                   tag: "LatinAmerikaOneView",
                                   selection: $appnavigationViewModel.nextScreen,
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

struct AppnavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppnavigationView()
    }
}
