cask "cursorgrid" do
  version "0.1.2"
  sha256 "ff77f8b632da12a9ec64dea44b54dd1cb772c160e20dc52c92303380a941ab6e"

  url "https://github.com/cursorgrid/homebrew-tap/releases/download/v#{version}/CursorGrid.dmg"
  name "CursorGrid"
  desc "Move and click the pointer from the keyboard with a grid"
  homepage "https://cursorgrid.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CursorGrid.app"

  uninstall quit: "com.cursorgrid.app"

  # The app keeps no files of its own yet; only macOS may write these.
  zap trash: [
    "~/Library/Preferences/com.cursorgrid.app.plist",
    "~/Library/Saved Application State/com.cursorgrid.app.savedState",
  ]
end
