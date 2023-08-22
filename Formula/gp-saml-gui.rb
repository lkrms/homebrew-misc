class GpSamlGui < Formula
  include Language::Python::Virtualenv

  desc "Interactively authenticate to GlobalProtect VPNs that require SAML"
  homepage "https://github.com/dlenski/gp-saml-gui"
  url "https://github.com/lkrms/gp-saml-gui/archive/c17c2c8c113c89a90074a114207b90d56e3b42d5.tar.gz"
  version "20230822"
  sha256 "70bc7490cde5f202933e8a4b0f9734c3924fe8c613eb72995bd99fe45687017f"
  license "GPL-3.0-or-later"
  head "https://github.com/lkrms/gp-saml-gui.git", branch: "lkrms/pywebview"

  depends_on "python@3.11"

  # To update:
  #
  # ```shell
  # brew update-python-resources lkrms/misc/gp-saml-gui
  # ```
  resource "bottle" do
    url "https://files.pythonhosted.org/packages/fd/04/1c09ab851a52fe6bc063fd0df758504edede5cc741bd2e807bf434a09215/bottle-0.12.25.tar.gz"
    sha256 "e1a9c94970ae6d710b3fb4526294dfeb86f2cb4a81eff3a4b98dc40fb0e5e021"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/98/98/c2ff18671db109c9f10ed27f5ef610ae05b73bd876664139cf95bd1429aa/certifi-2023.7.22.tar.gz"
    sha256 "539cc1d13202e33ca466e88b2807e29f4c13049d6d87031a3c110744495cb082"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/53/cf0a48de1bdcf6ff6e1c9a023f5f523dfe303e4024f216feac64b6eb7f67/charset-normalizer-3.2.0.tar.gz"
    sha256 "3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "proxy-tools" do
    url "https://files.pythonhosted.org/packages/f2/cf/77d3e19b7fabd03895caca7857ef51e4c409e0ca6b37ee6e9f7daa50b642/proxy_tools-0.1.0.tar.gz"
    sha256 "ccb3751f529c047e2d8a58440d86b205303cf0fe8146f784d1cbcd94f0a28010"
  end

  resource "pycairo" do
    url "https://files.pythonhosted.org/packages/a2/dd/bc2c9ee9485308a29c18b1241329e677917af25c60b127857f0fb23d0c6e/pycairo-1.24.0.tar.gz"
    sha256 "1444d52f1bb4cc79a4a0c0fe2ccec4bd78ff885ab01ebe1c0f637d8392bcafb6"
  end

  resource "pygobject" do
    url "https://files.pythonhosted.org/packages/44/80/96d6317a15a13a4f80ffa61118dc144a70756135fbc6ace30f9b033f51f7/PyGObject-3.44.1.tar.gz"
    sha256 "665fbe980c91e8b31ad78ed3f66879946948200864002d193f67eccc1d7d5d83"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/48/d9/a13566ce8914746557b9e8637a5abe1caae86ed202b0fb072029626b8bb1/pyobjc-core-9.2.tar.gz"
    sha256 "d734b9291fec91ff4e3ae38b9c6839debf02b79c07314476e87da8e90b2c68c3"
  end

  resource "pyobjc-framework-cocoa" do
    url "https://files.pythonhosted.org/packages/38/91/c54fdffda6d7cfad67ff617f19001163658d50bc72376d1584e691cf4895/pyobjc-framework-Cocoa-9.2.tar.gz"
    sha256 "efd78080872d8c8de6c2b97e0e4eac99d6203a5d1637aa135d071d464eb2db53"
  end

  resource "pyobjc-framework-security" do
    url "https://files.pythonhosted.org/packages/57/52/64bbefd489f51ab2681326777c77f6bafa48948c60774311e428e21fc0d1/pyobjc-framework-Security-9.2.tar.gz"
    sha256 "8d4f7a22db2fe666c7bff4a5825b49d2345e9a8d96ea085f1a614ad9a559b4e5"
  end

  resource "pyobjc-framework-webkit" do
    url "https://files.pythonhosted.org/packages/87/34/1a04b818bdefc2bf273038a8d83eeebf51301603c2f7df3b892d3533ed23/pyobjc-framework-WebKit-9.2.tar.gz"
    sha256 "86761cba8c18c3d2ecbd3ca7ab8b92c8b2eae8514741ec63527b536b671ab296"
  end

  resource "pywebview" do
    url "https://files.pythonhosted.org/packages/7e/7e/14bce72df2517f451155d318a8e41441ad84ca9d4d871b4a4aa6a0040dd7/pywebview-4.2.2.tar.gz"
    sha256 "85be4215cd65ceacca5c7faef9d271e10bfe3ca25d2498c1c6d2e59a4d56e86c"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/3c/8b/0111dd7d6c1478bf83baa1cab85c686426c7a6274119aceb2bd9d35395ad/typing_extensions-4.7.1.tar.gz"
    sha256 "b75ddc264f0ba5615db7ba217daeb99701ad295353c45f9e95963337ceeeffb2"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/31/ab/46bec149bbd71a4467a3063ac22f4486ecd2ceb70ae8c70d5d8e4c2a7946/urllib3-2.0.4.tar.gz"
    sha256 "8d22f86aae8ef5e410d4f539fde9ce6b2113a001bb4d189e0aed70642d602b11"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gp-saml-gui", "--help"
  end
end
