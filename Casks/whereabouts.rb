# Homebrew cask for Whereabouts
#
# Host this file in the shared tap repo: github.com/USERNAME/homebrew-tap
#   Casks/whereabouts.rb
#
# Install:
#   brew install --cask USERNAME/tap/whereabouts
#
# To update after a new release:
#   1. Replace `version` with the new version string.
#   2. Replace `sha256` with the SHA256 printed in the GitHub Actions release summary.

cask "whereabouts" do
  version "1.2.0"
  sha256 "5f679e476ae3bbac1c09c3cf01e81556cbaf6222871a5ad764c82c81391093da"

  url "https://github.com/zekevh/Whereabouts/releases/download/v#{version}/Whereabouts-#{version}.dmg"

  name "Whereabouts"
  desc "macOS menu bar app showing your public IP location and VPN status"
  homepage "https://zvh.io/apps/whereabouts"

  app "Whereabouts.app"

  caveats <<~EOS
    Whereabouts is not notarized. On first launch, right-click the app and select "Open",
    then confirm in the dialog that appears.

    Alternatively, remove the quarantine attribute:
      sudo xattr -d com.apple.quarantine /Applications/Whereabouts.app
  EOS
end
