class PrettyPhp < Formula
  desc "Opinionated code formatter for PHP"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.20/pretty-php.phar"
  sha256 "7d6b1c9f376fdee0825f0f360cc79fa9b9ce17b6add8d1eac68b83813650b361"
  license "MIT"

  depends_on "php"

  def install
    bin.install "pretty-php.phar" => "pretty-php"
  end

  test do
    assert_match "pretty-php v#{version}-", shell_output("#{bin}/pretty-php --version").strip
  end
end
