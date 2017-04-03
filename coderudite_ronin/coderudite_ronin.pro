#-------------------------------------------------
#
# Project created by QtCreator 2017-01-02T15:17:56
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = coderudite_ronin
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    qhttpserver/src/qhttpconnection.cpp \
    qhttpserver/src/qhttprequest.cpp \
    qhttpserver/src/qhttpresponse.cpp \
    qhttpserver/src/qhttpserver.cpp \
    qhttpserver/http-parser/http_parser.c \
    cdnview.cpp \
    abstractserver.cpp \
    cdn.cpp \
    model/solution.cpp \
    model/runresult.cpp \
    model/run.cpp \
    dedicatedrunserver.cpp \
    run_server_view.cpp

HEADERS  += mainwindow.h \
    qhttpserver/src/qhttpconnection.h \
    qhttpserver/src/qhttprequest.h \
    qhttpserver/src/qhttpresponse.h \
    qhttpserver/src/qhttpserver.h \
    qhttpserver/src/qhttpserverapi.h \
    qhttpserver/src/qhttpserverfwd.h \
    qhttpserver/http-parser/http_parser.h \
    cdnview.h \
    abstractserver.h \
    cdn.h \
    model/solution.h \
    model/runresult.h \
    model/run.h \
    dedicatedrunserver.h \
    run_server_view.h

INCLUDEPATH += qhttpserver/src \
	qhttpserver/http-parser

#We dont need dll files hence this hack
DEFINES += Q_HTTP_SERVER_API
DEFINES += "QHTTPSERVER_API=\"\""
##


FORMS    += mainwindow.ui \
    cdnview.ui \
    run_server_view.ui

CONFIG -= c++11 -frtti -fexceptions
CONFIG += thread warn_off
QMAKE_CXXFLAGS += -std=c++1y
QMAKE_LFLAGS += -shared-libgcc
QMAKE_LINK += -shared-libgcc

DISTFILES += \
	data/basic_1/assets/common/init - Copy.js \
	data/basic_1/assets/common/init.js \
	data/basic_1/assets/lib/bootstrap/js/bootstrap.js \
	data/basic_1/assets/lib/bootstrap/js/bootstrap.min.js \
	data/basic_1/assets/lib/bootstrap/js/npm.js \
	data/basic_1/assets/lib/c3/extensions/chart-bubble/bubble.js \
	data/basic_1/assets/lib/c3/extensions/exporter/phantom-exporter.js \
	data/basic_1/assets/lib/c3/extensions/js/c3ext.js \
	data/basic_1/assets/lib/c3/c3.js \
	data/basic_1/assets/lib/c3/c3.min.js \
	data/basic_1/assets/lib/c3/karma.conf.js \
	data/basic_1/assets/lib/d3/d3.js \
	data/basic_1/assets/lib/d3/d3.min.js \
	data/basic_1/assets/lib/d3/package.js \
	data/basic_1/assets/lib/datatables/js/jquery.dataTables.js \
	data/basic_1/assets/lib/datatables/js/jquery.dataTables.min.js \
	data/basic_1/assets/lib/easyXDM/example/bookmark.js \
	data/basic_1/assets/lib/easyXDM/tests/easyTest.js \
	data/basic_1/assets/lib/easyXDM/tests/easyXDM.debug.js \
	data/basic_1/assets/lib/easyXDM/tests/tests.js \
	data/basic_1/assets/lib/easyXDM/easyXDM.debug.js \
	data/basic_1/assets/lib/easyXDM/easyXDM.js \
	data/basic_1/assets/lib/easyXDM/easyXDM.min.js \
	data/basic_1/assets/lib/easyXDM/easyXDM.Widgets.debug.js \
	data/basic_1/assets/lib/easyXDM/easyXDM.Widgets.js \
	data/basic_1/assets/lib/easyXDM/easyXDM.Widgets.min.js \
	data/basic_1/assets/lib/easyXDM/json2.js \
	data/basic_1/assets/lib/google-code-prettify/prettify.min.js \
	data/basic_1/assets/lib/google-code-prettify/run_prettify.min.js \
	data/basic_1/assets/lib/jquery/jquery.js \
	data/basic_1/assets/lib/jquery/jquery.min.js \
	data/basic_1/assets/lib/JSON/cycle.js \
	data/basic_1/assets/lib/JSON/json2.js \
	data/basic_1/assets/lib/JSON/json_parse.js \
	data/basic_1/assets/lib/JSON/json_parse_state.js \
	data/basic_1/assets/lib/patternfly/js/patternfly.js \
	data/basic_1/assets/lib/patternfly/js/patternfly.min.js \
	data/basic_1/assets/lib/requirejs/require.js \
	data/basic_1/assets/lib/YUI/get-min.js \
	data/basic_1/assets/lib/YUI/yahoo-min.js \
	data/basic_1/assets/lib/c3/extensions/exporter/config.json \
	data/basic_1/assets/lib/d3/package.json \
	data/basic_1/assets/lib/bootstrap/fonts/glyphicons-halflings-regular.eot \
	data/basic_1/assets/lib/bootstrap/fonts/glyphicons-halflings-regular.woff \
	data/basic_1/assets/lib/bootstrap/fonts/glyphicons-halflings-regular.woff2 \
	data/basic_1/assets/lib/font-awesome/fonts/fontawesome-webfont.eot \
	data/basic_1/assets/lib/font-awesome/fonts/fontawesome-webfont.woff \
	data/basic_1/assets/lib/font-awesome/fonts/fontawesome-webfont.woff2 \
	data/basic_1/assets/lib/patternfly/fonts/fontawesome-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/fontawesome-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/fontawesome-webfont.woff2 \
	data/basic_1/assets/lib/patternfly/fonts/glyphicons-halflings-regular.eot \
	data/basic_1/assets/lib/patternfly/fonts/glyphicons-halflings-regular.woff \
	data/basic_1/assets/lib/patternfly/fonts/glyphicons-halflings-regular.woff2 \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Bold-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Bold-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-BoldItalic-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-BoldItalic-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-ExtraBold-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-ExtraBold-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-ExtraBoldItalic-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-ExtraBoldItalic-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Italic-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Italic-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Light-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Light-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-LightItalic-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-LightItalic-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Regular-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Regular-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Semibold-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Semibold-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-SemiboldItalic-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-SemiboldItalic-webfont.woff \
	data/basic_1/assets/lib/patternfly/fonts/PatternFlyIcons-webfont.eot \
	data/basic_1/assets/lib/patternfly/fonts/PatternFlyIcons-webfont.woff \
	data/basic_1/assets/lib/font-awesome/fonts/FontAwesome.otf \
	data/basic_1/assets/lib/patternfly/fonts/FontAwesome.otf \
	data/basic_1/assets/lib/bootstrap/fonts/glyphicons-halflings-regular.ttf \
	data/basic_1/assets/lib/font-awesome/fonts/fontawesome-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/fontawesome-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/glyphicons-halflings-regular.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Bold-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-BoldItalic-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-ExtraBold-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-ExtraBoldItalic-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Italic-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Light-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-LightItalic-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Regular-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Semibold-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-SemiboldItalic-webfont.ttf \
	data/basic_1/assets/lib/patternfly/fonts/PatternFlyIcons-webfont.ttf \
	data/basic_1/assets/lib/easyXDM/easyxdm.swf \
	data/basic_1/assets/lib/easyXDM/tests/s.gif \
	data/basic_1/assets/lib/patternfly/img/spinner-inverse-lg.gif \
	data/basic_1/assets/lib/patternfly/img/spinner-inverse-sm.gif \
	data/basic_1/assets/lib/patternfly/img/spinner-inverse-xs.gif \
	data/basic_1/assets/lib/patternfly/img/spinner-inverse.gif \
	data/basic_1/assets/lib/patternfly/img/spinner-lg.gif \
	data/basic_1/assets/lib/patternfly/img/spinner-sm.gif \
	data/basic_1/assets/lib/patternfly/img/spinner-xs.gif \
	data/basic_1/assets/lib/patternfly/img/spinner.gif \
	data/basic_1/assets/lib/patternfly/img/bg-login.jpg \
	data/basic_1/assets/lib/c3/extensions/exporter/test.png \
	data/basic_1/assets/lib/datatables/images/sort_asc.png \
	data/basic_1/assets/lib/datatables/images/sort_asc_disabled.png \
	data/basic_1/assets/lib/datatables/images/sort_both.png \
	data/basic_1/assets/lib/datatables/images/sort_desc.png \
	data/basic_1/assets/lib/datatables/images/sort_desc_disabled.png \
	data/basic_1/assets/lib/patternfly/img/apple-touch-icon-precomposed-114.png \
	data/basic_1/assets/lib/patternfly/img/apple-touch-icon-precomposed-144.png \
	data/basic_1/assets/lib/patternfly/img/apple-touch-icon-precomposed-152.png \
	data/basic_1/assets/lib/patternfly/img/apple-touch-icon-precomposed-180.png \
	data/basic_1/assets/lib/patternfly/img/apple-touch-icon-precomposed-57.png \
	data/basic_1/assets/lib/patternfly/img/apple-touch-icon-precomposed-72.png \
	data/basic_1/assets/lib/patternfly/img/apple-touch-icon-precomposed-76.png \
	data/basic_1/assets/lib/patternfly/img/bg-modal-about-pf.png \
	data/basic_1/assets/lib/bootstrap/fonts/glyphicons-halflings-regular.svg \
	data/basic_1/assets/lib/font-awesome/fonts/fontawesome-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/fontawesome-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/glyphicons-halflings-regular.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Bold-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-BoldItalic-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-ExtraBold-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-ExtraBoldItalic-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Italic-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Light-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-LightItalic-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Regular-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-Semibold-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/OpenSans-SemiboldItalic-webfont.svg \
	data/basic_1/assets/lib/patternfly/fonts/PatternFlyIcons-webfont.svg \
	data/basic_1/assets/lib/patternfly/img/bg-navbar-pf-alt.svg \
	data/basic_1/assets/lib/patternfly/img/brand-alt.svg \
	data/basic_1/assets/lib/patternfly/img/brand.svg \
	data/basic_1/assets/lib/patternfly/img/kubernetes-Logo.svg \
	data/basic_1/assets/lib/patternfly/img/kubernetes.svg \
	data/basic_1/assets/lib/patternfly/img/logo-alt.svg \
	data/basic_1/assets/lib/patternfly/img/logo.svg \
	data/basic_1/assets/lib/patternfly/img/OpenShift-Logo-NoText.svg \
	data/basic_1/assets/lib/patternfly/img/OpenShift-Logo-Text.svg \
	data/basic_1/assets/lib/patternfly/img/OpenShift-logo.svg \
	data/basic_1/assets/lib/patternfly/img/RH_Atomic-Logo-NoText.svg \
	data/basic_1/assets/lib/patternfly/img/RH_Atomic-Logo-Text.svg \
	data/basic_1/assets/lib/patternfly/img/RH_atomic.svg \
	data/basic_1/assets/lib/datatables/images/Sorting icons.psd \
	data/basic_1/assets/lib/datatables/images/favicon.ico \
	data/basic_1/assets/lib/patternfly/img/favicon.ico \
	data/basic_1/assets/lib/bootstrap/css/bootstrap-theme.css \
	data/basic_1/assets/lib/bootstrap/css/bootstrap-theme.min.css \
	data/basic_1/assets/lib/bootstrap/css/bootstrap.css \
	data/basic_1/assets/lib/bootstrap/css/bootstrap.min.css \
	data/basic_1/assets/lib/c3/c3.css \
	data/basic_1/assets/lib/c3/c3.min.css \
	data/basic_1/assets/lib/datatables/css/jquery.dataTables.css \
	data/basic_1/assets/lib/datatables/css/jquery.dataTables.min.css \
	data/basic_1/assets/lib/easyXDM/tests/easyTest.css \
	data/basic_1/assets/lib/font-awesome/css/font-awesome.css \
	data/basic_1/assets/lib/font-awesome/css/font-awesome.min.css \
	data/basic_1/assets/lib/google-code-prettify/prettify.min.css \
	data/basic_1/assets/lib/patternfly/css/patternfly-additions.css \
	data/basic_1/assets/lib/patternfly/css/patternfly-additions.min.css \
	data/basic_1/assets/lib/patternfly/css/patternfly.css \
	data/basic_1/assets/lib/patternfly/css/patternfly.min.css \
	data/basic_1/assets/common/includes_1.html \
	data/basic_1/assets/lib/c3/extensions/chart-bubble/index.html \
	data/basic_1/assets/lib/easyXDM/cors/index.html \
	data/basic_1/assets/lib/easyXDM/example/blank.html \
	data/basic_1/assets/lib/easyXDM/example/bookmark.html \
	data/basic_1/assets/lib/easyXDM/example/bridge.html \
	data/basic_1/assets/lib/easyXDM/example/data.html \
	data/basic_1/assets/lib/easyXDM/example/index.html \
	data/basic_1/assets/lib/easyXDM/example/methods.html \
	data/basic_1/assets/lib/easyXDM/example/remote.html \
	data/basic_1/assets/lib/easyXDM/example/remoteapp.html \
	data/basic_1/assets/lib/easyXDM/example/remotedata.html \
	data/basic_1/assets/lib/easyXDM/example/remotemethods.html \
	data/basic_1/assets/lib/easyXDM/example/remoterpcbackend.html \
	data/basic_1/assets/lib/easyXDM/example/remotetransport.html \
	data/basic_1/assets/lib/easyXDM/example/resize_iframe.html \
	data/basic_1/assets/lib/easyXDM/example/resize_intermediate.html \
	data/basic_1/assets/lib/easyXDM/example/resized_iframe_1.html \
	data/basic_1/assets/lib/easyXDM/example/resized_iframe_2.html \
	data/basic_1/assets/lib/easyXDM/example/transport.html \
	data/basic_1/assets/lib/easyXDM/example/upload.html \
	data/basic_1/assets/lib/easyXDM/example/upload_handler.aspx \
	data/basic_1/assets/lib/easyXDM/example/upload_rpc.html \
	data/basic_1/assets/lib/easyXDM/example/widget.html \
	data/basic_1/assets/lib/easyXDM/example/widgets.html \
	data/basic_1/assets/lib/easyXDM/example/xhr.html \
	data/basic_1/assets/lib/easyXDM/tests/index.html \
	data/basic_1/assets/lib/easyXDM/tests/test_namespace.html \
	data/basic_1/assets/lib/easyXDM/tests/test_rpc.html \
	data/basic_1/assets/lib/easyXDM/tests/test_transport.html \
	data/basic_1/assets/lib/easyXDM/name.html \
	data/basic_1/index.html \
	data/basic_1/assets/common/init.js.copy \
	data/basic_1/assets/lib/bootstrap/css/bootstrap-theme.css.map \
	data/basic_1/assets/lib/bootstrap/css/bootstrap-theme.min.css.map \
	data/basic_1/assets/lib/bootstrap/css/bootstrap.css.map \
	data/basic_1/assets/lib/bootstrap/css/bootstrap.min.css.map \
	data/basic_1/assets/lib/easyXDM/example/glossary.aspx \
	data/basic_1/assets/lib/easyXDM/MIT-license.txt \
	data/basic_1/assets/lib/JSON/README \
    mime_types.txt


#QMAKE_POST_LINK += $(COPY_DIR) $$system_path($$PWD/data) $$system_path($$OUT_PWD/data)


DEFINES += "SITEROOT=\"../../..\""
#DEFINES += "SITEROOT=\"$$PWD\""

#ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
