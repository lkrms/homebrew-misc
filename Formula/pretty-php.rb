class PrettyPhp < Formula
  desc "Opinionated PHP code formatter"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.24/pretty-php.phar"
  sha256 "7b56aea88660c7ec780bdc05fa5bd15fdf524ce5b36a9d446b69e33e5ae623fa"
  license "MIT"

  depends_on "php"

  def install
    bin.install "pretty-php.phar" => "pretty-php"
  end

  test do
    assert_match "pretty-php v#{version}-", shell_output("#{bin}/pretty-php --version").strip
  end
end
