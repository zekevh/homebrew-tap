# Homebrew cask for MarkLens
#
# Install:
#   brew install --cask zekevh/tap/marklens
#
# To update after a new release:
#   1. Replace `version` with the new version string.
#   2. Replace `sha256` with the SHA256 printed in the GitHub Actions release summary.

cask "marklens" do
  version "1.2"
  sha256 "8079a691df1ac794de03c10cb03bc13f7416fb195bfb4bad6a6a0608a9842bbc"

  url "https://github.com/zekevh/MarkLens/releases/download/v#{version}/MarkLens-#{version}.dmg"

  name "MarkLens"
  desc "Lightweight native macOS markdown editor"
  homepage "https://zvh.io/apps/marklens"

  app "MarkLens.app"

  caveats <<~EOS
    MarkLens is not notarized. On first launch, right-click the app and select "Open",
    then confirm in the dialog that appears.

    Alternatively, remove the quarantine attribute:
      sudo xattr -d com.apple.quarantine /Applications/MarkLens.app
  EOS
end
