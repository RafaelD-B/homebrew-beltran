cask "beltran" do
  version "0.24.2"
  sha256 "7340ee9da4c5bf925cc1ed24ffeb5b5081a967eadcf3dda8721928d2a6a075a6"

  url "https://github.com/RafaelD-B/belt.ran-dist/releases/download/v#{version}/belt.ran_#{version}_aarch64.dmg"
  name "belt.ran"
  desc "Polyglot database client with a secure MCP server for AI agents"
  homepage "https://belt-ran.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "belt.ran.app"
  # Expõe o binário no PATH: `beltran mcp` (servidor MCP para agentes).
  binary "#{appdir}/belt.ran.app/Contents/MacOS/beltran"

  zap trash: [
    "~/Library/Application Support/com.beltran.app",
    "~/Library/Caches/com.beltran.app",
    "~/Library/Preferences/com.beltran.app.plist",
    "~/Library/Saved Application State/com.beltran.app.savedState",
    "~/Library/WebKit/com.beltran.app",
  ]
end
