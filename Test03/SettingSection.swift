import UIKit

enum CellType: String {
    case detailTitle
    case `switch`
    case rightDetail
}

struct SettingItem {
    let title: String
    let RightDetail: String?
    let subTitle: String?
    let type: CellType
    let on: Bool
    var imageName: String?
}

struct SettingSection {
    let items: [SettingItem]
    let header: String?
    
    static func generateData() -> [SettingSection] {
        return [
            SettingSection(items: [SettingItem(title: "Kim", RightDetail: nil, subTitle: "Apple ID, iCloud, 미디어 및 구입", type: .detailTitle, on: false, imageName: "user")], header: "설정"),
            SettingSection(items: [
                SettingItem(title: "에어플레인 모드", RightDetail: nil, subTitle: nil, type: .switch, on: false, imageName: "airplane"),
                SettingItem(title: "Wi-Fi", RightDetail: "끔", subTitle: nil, type: .rightDetail, on: false, imageName: "wifi"),
                SettingItem(title: "Bluetooth", RightDetail: "켬", subTitle: nil, type: .rightDetail, on: false, imageName: "bluetooth"),
                SettingItem(title: "셀룰러", RightDetail: nil, subTitle: nil, type: .detailTitle, on: false, imageName: "signal-tower"),
                SettingItem(title: "개인용 핫스팟", RightDetail: "켬", subTitle: nil, type: .rightDetail, on: false, imageName: "smartphone")
            ], header: nil),
            SettingSection(items: [
                SettingItem(title: "알림", RightDetail: nil, subTitle: nil, type: .detailTitle, on: false, imageName: "ball"),
                SettingItem(title: "사운드 및 햅틱", RightDetail: nil, subTitle: nil, type: .detailTitle, on: false, imageName: "headphone"),
                SettingItem(title: "방해금지 모드", RightDetail: nil, subTitle: nil, type: .detailTitle, on: false, imageName: "moon"),
                SettingItem(title: "스크린 타임", RightDetail: nil, subTitle: nil, type: .detailTitle, on: false, imageName: "hourglass")
            ], header: nil)
        ]
    }
}
