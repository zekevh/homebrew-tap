# Homebrew cask for MarkLens
#
# Install:
#   brew install --cask zekevh/tap/marklens
#
# To update after a new release:
#   1. Replace `version` with the new version string.
#   2. Replace `sha256` with the SHA256 printed in the GitHub Actions release summary.

cask "marklens" do
  version "1.9"
  sha256 "a208e2955d27e4e7b51027541dd2aa025014085e01294da042e18f5cd5d18201"

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
