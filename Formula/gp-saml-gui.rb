class GpSamlGui < Formula
  include Language::Python::Virtualenv

  desc "Interactively authenticate to GlobalProtect VPNs that require SAML"
  homepage "https://github.com/dlenski/gp-saml-gui"
  url "https://github.com/lkrms/gp-saml-gui/archive/d5b19868424c0ea8145d532ed638fda4aba45d60.tar.gz"
  version "20250318"
  sha256 "d37e6b02410a9dfc2685d9c6b83759d2b822b68b09220d98be0a4d5e0b539b4a"
  license "GPL-3.0-or-later"
  head "https://github.com/lkrms/gp-saml-gui.git", branch: "lkrms/pywebview"

  depends_on "gtk+3"
  depends_on "openconnect"
  depends_on "pygobject3"
  depends_on "python@3.14"
  depends_on "vpn-slice" => :optional

  # To update:
  #
  # ```shell
  # brew update-python-resources --exclude-packages pygobject lkrms/misc/gp-saml-gui
  # ```
  resource "bottle" do
    url "https://files.pythonhosted.org/packages/7a/71/cca6167c06d00c81375fd668719df245864076d284f7cb46a694cbeb5454/bottle-0.13.4.tar.gz"
    sha256 "787e78327e12b227938de02248333d788cfe45987edca735f8f88e03472c3f47"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/25/ee/6caf7a40c36a1220410afe15a1cc64993a1f864871f698c0f93acb72842a/certifi-2026.4.22.tar.gz"
    sha256 "8d455352a37b71bf76a79caa83a3d6c25afee4a385d632127b6afb3963f1c580"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e7/a1/67fe25fac3c7642725500a3f6cfe5821ad557c3abb11c9d20d12c7008d3e/charset_normalizer-3.4.7.tar.gz"
    sha256 "ae89db9e5f98a11a4bf50407d4363e7b09b31e55bc117b4f7d80aab97ba009e5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/05/b1/efac073e0c297ecf2fb33c346989a529d4e19164f1759102dee5953ee17e/idna-3.14.tar.gz"
    sha256 "466d810d7a2cc1022bea9b037c39728d51ae7dad40d480fc9b7d7ecf98ba8ee3"
  end

  resource "proxy-tools" do
    url "https://files.pythonhosted.org/packages/f2/cf/77d3e19b7fabd03895caca7857ef51e4c409e0ca6b37ee6e9f7daa50b642/proxy_tools-0.1.0.tar.gz"
    sha256 "ccb3751f529c047e2d8a58440d86b205303cf0fe8146f784d1cbcd94f0a28010"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
    sha256 "2bb3903f5387f72422145e1466b3ac3f7f0ef2e9960afa9bcd8961c5cbf8bd21"
  end

  resource "pyobjc-framework-cocoa" do
    url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
    sha256 "5556c87db95711b985d5efdaaf01c917ddd41d148b1e52a0c66b1a2e2c5c1640"
  end

  resource "pyobjc-framework-quartz" do
    url "https://files.pythonhosted.org/packages/94/18/cc59f3d4355c9456fc945eae7fe8797003c4da99212dd531ad1b0de8a0c6/pyobjc_framework_quartz-12.1.tar.gz"
    sha256 "27f782f3513ac88ec9b6c82d9767eef95a5cf4175ce88a1e5a65875fee799608"
  end

  resource "pyobjc-framework-security" do
    url "https://files.pythonhosted.org/packages/80/aa/796e09a3e3d5cee32ebeebb7dcf421b48ea86e28c387924608a05e3f668b/pyobjc_framework_security-12.1.tar.gz"
    sha256 "7fecb982bd2f7c4354513faf90ba4c53c190b7e88167984c2d0da99741de6da9"
  end

  resource "pyobjc-framework-webkit" do
    url "https://files.pythonhosted.org/packages/14/10/110a50e8e6670765d25190ca7f7bfeecc47ec4a8c018cb928f4f82c56e04/pyobjc_framework_webkit-12.1.tar.gz"
    sha256 "97a54dd05ab5266bd4f614e41add517ae62cdd5a30328eabb06792474b37d82a"
  end

  resource "pywebview" do
    url "https://files.pythonhosted.org/packages/7a/c7/645f3b0bb190bf58c5cea9cfbcaa337ce3b54531ad207d3748676eb8cdc9/pywebview-5.4.tar.gz"
    sha256 "b5e2c6c7502aaf72a9ae6034daf83785f5fad874fac7fa82bf4fcf854f1f083a"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/5f/a4/98b9c7c6428a668bf7e42ebb7c79d576a1c3c1e3ae2d47e674b468388871/requests-2.33.1.tar.gz"
    sha256 "18817f8c57c6263968bc123d237e3b8b08ac046f5456bd1e307ee8f4250d3517"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  def install
    # Work around "error: 'CGWindowListCreateImageFromArray' is unavailable:
    # obsoleted in macOS 15.0 - Please use ScreenCaptureKit instead."
    ENV["MACOSX_DEPLOYMENT_TARGET"] = "14.0" if OS.mac? && MacOS.version >= :sequoia
    virtualenv_install_with_resources
  end

  test do
    system bin/"gp-saml-gui", "--help"
  end
end
