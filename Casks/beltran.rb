cask "beltran" do
  version "0.25.0"
  sha256 "90bdc4852975604f9df8e79e56bdb21b7ffdda0986ca14b87f41dda310dc151d"

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
