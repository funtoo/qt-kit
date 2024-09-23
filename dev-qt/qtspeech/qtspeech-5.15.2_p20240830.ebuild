# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="71574a57103f0da64ce5e4c0ac6d70141496d5e8"

inherit qt5-build

DESCRIPTION="Text-to-speech library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtspeech/-/archive/71574a57103f0da64ce5e4c0ac6d70141496d5e8/qtspeech-71574a57103f0da64ce5e4c0ac6d70141496d5e8.tar.bz2 -> qtspeech-71574a57103f0da64ce5e4c0ac6d70141496d5e8.tar.bz2"

KEYWORDS="*"

IUSE="alsa flite"

RDEPEND="
	>=app-accessibility/speech-dispatcher-0.8.7
	=dev-qt/qtcore-5.15.2*
	flite? (
		>=app-accessibility/flite-2[alsa?]
		=dev-qt/qtmultimedia-5.15.2*[alsa?]
		alsa? ( media-libs/alsa-lib )
	)
"
DEPEND="${RDEPEND}"

src_prepare() {
	qt_use_disable_config flite flite \
		src/plugins/tts/tts.pro

	qt_use_disable_config alsa flite_alsa \
		src/plugins/tts/flite/flite.pro

	qt5-build_src_prepare
}