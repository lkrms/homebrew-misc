class PrettyPhp < Formula
  desc "Opinionated PHP code formatter"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.89/pretty-php.phar"
  sha256 "fa52116b7d02683d638c3631e673b0549ada0bb3536ebf7ba42f46e7ca2caa81"
  license "MIT"

  depends_on "pandoc" => :build
  depends_on "php"

  def install
    mv "pretty-php.phar", "pretty-php"
    system "#{Formula["php"].bin}/php -ddisplay_errors=stderr pretty-php _man | #{Formula["pandoc"].bin}/pandoc --standalone --to man -o pretty-php.1"

    bin.install "pretty-php"
    man1.install "pretty-php.1"
  end

  test do
    assert_match "pretty-php v#{version} \\(", shell_output("#{bin}/pretty-php --version").strip
  end
end
