#############################################################################
# Makefile for building: LabStend
# Generated by qmake (3.0) (Qt 5.2.1)
# Project:  LabStend.pro
# Template: app
# Command: /home/faul/mxe/usr/i686-pc-mingw32.static/qt5/bin/qmake -o Makefile LabStend.pro
#############################################################################

MAKEFILE      = Makefile

first: release
install: release-install
uninstall: release-uninstall
QMAKE         = /home/faul/mxe/usr/i686-pc-mingw32.static/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = cp -f
INSTALL_PROGRAM = cp -f
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm -f
SYMLINK       = 
DEL_DIR       = rmdir
MOVE          = mv -f
SUBTARGETS    =  \
		release \
		debug


release: FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall
debug: FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall

Makefile: LabStend.pro /home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/win32-g++/qmake.conf /home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/spec_pre.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/qdevice.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/device_config.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/common/shell-unix.conf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/qconfig.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axbase.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axbase_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axcontainer.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axcontainer_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axserver.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axserver_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_bluetooth.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_clucene_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_core.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_declarative.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_declarative_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_gui.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_help.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_help_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_multimedia_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_network.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_nfc.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_nfc_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_positioning.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_positioning_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qml.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qml_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qmltest_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_quick.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_quick_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_script.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_script_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_scripttools_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_sensors.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_sensors_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_serialport.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_serialport_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_sql.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_svg.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_svg_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_uitools.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_uitools_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_xml.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_dsengine.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qgenericbearer.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qico.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qminimal.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_inspector.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_qtquick2.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_tcp.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_tcp_qtdeclarative.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmng.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qnativewifibearer.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsvg.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsvgicon.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtaccessiblequick.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtaccessiblewidgets.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtga.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtiff.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtmedia_audioengine.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtmultimedia_m3u.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtposition_positionpoll.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensorgestures_plugin.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensorgestures_shakeplugin.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensors_dummy.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensors_generic.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwbmp.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwindows.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_windowsprintersupport.pri \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/qt_functions.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/qt_config.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/win32-g++/qmake.conf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/spec_post.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/exclusive_builds.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/default_pre.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/win32/default_pre.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/resolve_config.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/exclusive_builds_post.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/default_post.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/win32/rtti.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/warn_on.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/qt.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/resources.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/moc.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/win32/opengl.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/uic.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/win32/windows.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/testcase_targets.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/exceptions.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/yacc.prf \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/lex.prf \
		LabStend.pro \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5PrintSupport.prl \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5Widgets.prl \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5Gui.prl \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5Core.prl \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/plugins/platforms/qwindows.prl \
		/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5PlatformSupport.prl
	$(QMAKE) -o Makefile LabStend.pro
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/spec_pre.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/qdevice.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/device_config.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/common/shell-unix.conf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/qconfig.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axbase.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axbase_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axcontainer.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axcontainer_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axserver.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_axserver_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_bluetooth.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_bluetooth_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_clucene_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_core.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_core_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_dbus.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_declarative.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_declarative_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_gui.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_help.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_help_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_multimedia.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_multimedia_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_network.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_network_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_nfc.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_nfc_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_opengl.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_positioning.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_positioning_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qml.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qml_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qmltest.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qmltest_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_quick.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_quick_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_script.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_script_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_scripttools.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_scripttools_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_sensors.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_sensors_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_serialport.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_serialport_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_sql.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_svg.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_svg_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_testlib.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_uitools.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_uitools_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_widgets.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_xml.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_xmlpatterns.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_dsengine.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qgenericbearer.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qico.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qminimal.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_inspector.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_qtquick2.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_tcp.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmldbg_tcp_qtdeclarative.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qmng.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qnativewifibearer.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsvg.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qsvgicon.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtaccessiblequick.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtaccessiblewidgets.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtga.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtiff.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtmedia_audioengine.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtmultimedia_m3u.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtposition_positionpoll.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensorgestures_plugin.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensorgestures_shakeplugin.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensors_dummy.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qtsensors_generic.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwbmp.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_qwindows.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/modules/qt_plugin_windowsprintersupport.pri:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/qt_functions.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/qt_config.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/win32-g++/qmake.conf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/spec_post.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/exclusive_builds.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/default_pre.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/win32/default_pre.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/resolve_config.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/exclusive_builds_post.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/default_post.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/win32/rtti.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/warn_on.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/qt.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/resources.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/moc.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/win32/opengl.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/uic.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/win32/windows.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/testcase_targets.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/exceptions.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/yacc.prf:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/mkspecs/features/lex.prf:
LabStend.pro:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5PrintSupport.prl:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5Widgets.prl:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5Gui.prl:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5Core.prl:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/plugins/platforms/qwindows.prl:
/home/faul/mxe/usr/i686-pc-mingw32.static/qt5/lib/Qt5PlatformSupport.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile LabStend.pro

qmake_all: FORCE

make_first: release-make_first debug-make_first FORCE
all: release-all debug-all FORCE
clean: release-clean debug-clean FORCE
distclean: release-distclean debug-distclean FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) /mnt/Filestor/Dev/Git/LabStend/labstend_plugin_import.cpp

release-mocclean:
	$(MAKE) -f $(MAKEFILE).Release mocclean
debug-mocclean:
	$(MAKE) -f $(MAKEFILE).Debug mocclean
mocclean: release-mocclean debug-mocclean

release-mocables:
	$(MAKE) -f $(MAKEFILE).Release mocables
debug-mocables:
	$(MAKE) -f $(MAKEFILE).Debug mocables
mocables: release-mocables debug-mocables

check: first
FORCE:

$(MAKEFILE).Release: Makefile
$(MAKEFILE).Debug: Makefile
