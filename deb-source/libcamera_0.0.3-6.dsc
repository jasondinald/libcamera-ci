-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: libcamera
Binary: libcamera-dev, libcamera-doc, libcamera0.0.3, libcamera-ipa, libcamera-tools, libcamera-v4l2, gstreamer1.0-libcamera
Architecture: any all
Version: 0.0.3-6
Maintainer: Debian Multimedia Maintainers <debian-multimedia@lists.debian.org>
Uploaders: Emmanuel Arias <emmanuelarias30@gmail.com>, IOhannes m zmölnig (Debian/GNU) <umlaeute@debian.org>, Andrej Shadura <andrewsh@debian.org>, Dylan Aïssi <daissi@debian.org>
Homepage: https://libcamera.org/
Standards-Version: 4.6.2
Vcs-Browser: https://salsa.debian.org/multimedia-team/libcamera
Vcs-Git: https://salsa.debian.org/multimedia-team/libcamera.git
Testsuite: autopkgtest
Build-Depends: debhelper-compat (= 13), doxygen <!nodoc>, doxygen-latex <!nodoc>, graphviz <!nodoc>, libdw-dev <!pkg.libcamera.notrace>, libevent-dev, libgnutls28-dev | gnutls-dev, libgstreamer-plugins-base1.0-dev, libgstreamer1.0-dev, libgtest-dev <!nocheck>, libjpeg-dev <!pkg.libcamera.nosdl>, libjs-jquery <!nodoc>, libjs-sphinxdoc <!nodoc>, libjs-underscore <!nodoc>, liblttng-ust-dev [linux-any], libsdl2-dev <!pkg.libcamera.nosdl>, libtiff-dev, libudev-dev [linux-any], libyaml-dev, meson (>= 0.56), openssl, pkgconf | pkg-config, python3-jinja2, python3-ply, python3-sphinx <!nodoc>, python3-yaml, qtbase5-dev <!pkg.libcamera.noqt>
Package-List:
 gstreamer1.0-libcamera deb libs optional arch=any
 libcamera-dev deb libdevel optional arch=any
 libcamera-doc deb doc optional arch=all profile=!nodoc
 libcamera-ipa deb libs optional arch=any
 libcamera-tools deb video optional arch=any
 libcamera-v4l2 deb libs optional arch=any
 libcamera0.0.3 deb libs optional arch=any
Checksums-Sha1:
 26197599e419cbbd90f6fd4ed9cff51492588597 955820 libcamera_0.0.3.orig.tar.xz
 5a3f78dc9b1f5d88bb50883fc57102de70a2cf52 18268 libcamera_0.0.3-6.debian.tar.xz
Checksums-Sha256:
 5e8c60f41469dc2d269dd646f65183c61bb43866433cf93470900bb4d11ca56b 955820 libcamera_0.0.3.orig.tar.xz
 c6d972639b3b952ece26eadaead7d6eaa43c488e760dff0486ae68dcf67f9fd8 18268 libcamera_0.0.3-6.debian.tar.xz
Files:
 ba5f2ad482a49bebca986fcec35ab9f4 955820 libcamera_0.0.3.orig.tar.xz
 a2a4fa8f26c993689d68b3b25230d9d4 18268 libcamera_0.0.3-6.debian.tar.xz
Dgit: b9ec6d82383fb91b4b70cd213812bd8f008cd5ad debian archive/debian/0.0.3-6 https://git.dgit.debian.org/libcamera

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQSD3NF/RLIsyDZW7aHoRGtKyMdyYQUCZAW1SAAKCRDoRGtKyMdy
YdO2AQDH2FzaKQoZo1+KuvrsOGVUQrCnkw5/ZjHYDMkWB/nODgD/d8Hi2Wl2YH8E
pao7P8zADRea2mbgCG4skuTuJTLIlQQ=
=JevP
-----END PGP SIGNATURE-----
