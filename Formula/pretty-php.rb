class PrettyPhp < Formula
  desc "Opinionated code formatter for PHP"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.22/pretty-php.phar"
  sha256 "5f14c0d701e942f3a03a461f5f14fa1d9260fbee64f0ec616acb7142429bad16"
  license "MIT"

  depends_on "php"

  def install
    bin.install "pretty-php.phar" => "pretty-php"
  end

  test do
    assert_match "pretty-php v#{version}-", shell_output("#{bin}/pretty-php --version").strip
  end
end
