class PrettyPhp < Formula
  desc "Opinionated PHP code formatter"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.25/pretty-php.phar"
  sha256 "537d32258716abacd4fc50c844e4414e51d325bfaf391e5496b706e952739169"
  license "MIT"

  depends_on "php"

  def install
    bin.install "pretty-php.phar" => "pretty-php"
  end

  test do
    assert_match "pretty-php v#{version}-", shell_output("#{bin}/pretty-php --version").strip
  end
end
