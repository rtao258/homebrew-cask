# INELIGIBLE FOR homebrew-cask due to unsigned / Gatekeeper bypass
# kindly note that I'm also not set up for autobump!

cask "audiveris" do
  arch arm: "arm64", intel: "x86_64"

  version "5.11.0"
  sha256 arm:   "17491af8b6d40153b031dd1f0815e37213f0999ef23f10586af46706e59b2eb6",
         intel: "11794424c6f1698617836a77d2c5818c46405a3fe7388281c623c4e383fa33cb"

  url "https://github.com/Audiveris/audiveris/releases/download/#{version}/Audiveris-#{version}-macosx-#{arch}.dmg"
  name "Audiveris"
  desc "Open source Optical Music Recognition (OMR) engine and editor"
  homepage "https://audiveris.github.io/audiveris/"

  depends_on :macos

  app "Audiveris.app"

  zap trash: [
    "~/Library/Application Support/audiveris",
    "~/Library/Application Support/AudiverisLtd",
    "~/Library/AudiverisLtd",
  ]
end
