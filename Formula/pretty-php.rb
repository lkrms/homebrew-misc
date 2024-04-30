class PrettyPhp < Formula
  desc "Opinionated PHP code formatter"
  homepage "https://github.com/lkrms/pretty-php"
  url "https://github.com/lkrms/pretty-php/releases/download/v0.4.62/pretty-php.phar"
  sha256 "832f945aa5444ac00e7936b685b6be764ff160444bbb8875b0f5b3ef8b4ee572"
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
    assert_match "pretty-php v#{version}-", shell_output("#{bin}/pretty-php --version").strip
  end
end
