class PrettyPhp < Formula
  desc "Opinionated PHP code formatter"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.23/pretty-php.phar"
  sha256 "8b6acecc65fd7b95da0dc7d882fa63c9e882e389f32e154c29ec75f8ec6f9aee"
  license "MIT"

  depends_on "php"

  def install
    bin.install "pretty-php.phar" => "pretty-php"
  end

  test do
    assert_match "pretty-php v#{version}-", shell_output("#{bin}/pretty-php --version").strip
  end
end
