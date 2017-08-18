// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
enum L10n {
  /// EXPANSIVE
  case navbarMainTitle
  /// ANALYSES
  case pageMenuAnalyses
  /// AILLEURS
  case pageMenuElsewhere
  /// GUIDE PRATIQUE
  case pageMenuGuide
  /// INFOS LOCALES
  case pageMenuLocalInfos
}
// swiftlint:enable type_body_length

extension L10n: CustomStringConvertible {
  var description: String { return self.string }

  var string: String {
    switch self {
      case .navbarMainTitle:
        return L10n.tr(key: "navbar_main_title")
      case .pageMenuAnalyses:
        return L10n.tr(key: "page_menu_analyses")
      case .pageMenuElsewhere:
        return L10n.tr(key: "page_menu_elsewhere")
      case .pageMenuGuide:
        return L10n.tr(key: "page_menu_guide")
      case .pageMenuLocalInfos:
        return L10n.tr(key: "page_menu_local_infos")
    }
  }

  private static func tr(key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

func tr(_ key: L10n) -> String {
  return key.string
}

private final class BundleToken {}
