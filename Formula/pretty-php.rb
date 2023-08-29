class PrettyPhp < Formula
  desc "Opinionated code formatter for PHP"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.21/pretty-php.phar"
  sha256 "f7238f9dec4cceee00a9d000fcabff693805397068ec51f49cf6ed098a46e1d2"
  license "MIT"

  depends_on "php"

  def install
    bin.install "pretty-php.phar" => "pretty-php"
  end

  test do
    assert_match "pretty-php v#{version}-", shell_output("#{bin}/pretty-php --version").strip
  end
end
