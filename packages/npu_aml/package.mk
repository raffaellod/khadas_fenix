PKG_NAME="npu_aml"
PKG_VERSION="e5f952317351915071808d196769407496bfcd89"
PKG_SHA256="9024f11b4786ba3aba9aa455dedb424357a52cde906f11d09118c95f9fbc22fb"
PKG_SOURCE_DIR="npu_aml-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/npu_aml"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Amlogic NPU libraries"
PKG_SOURCE_NAME="npu_aml-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="YES"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/npu_aml
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/npu_aml/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/${KHADAS_BOARD/}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/npu_aml
}
