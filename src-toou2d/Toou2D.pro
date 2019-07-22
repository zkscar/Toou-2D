QT          += qml quick quickcontrols2
CONFIG      += plugin c++11 release
TEMPLATE    = lib
TARGET      = Toou2D
TARGET      = $$qtLibraryTarget($$TARGET)
VERSION     = 1.0
uri         = Toou2D

#自动安装qml plugin到Qt qml目录里
CONFIG      += install

##静态库无法安装到Qt qml目录，需要配置到项目的 .pro中才可以使用
#CONFIG     += staticlib

CONFIG      += dev


RESOURCES += \
    t2d_res.qrc


# Input
HEADERS += \
        qml_plugin.h \
        Toou2D.h \
        t2d.h \
        world.h \
        theme/theme_binder.h \
        theme/theme_handler.h \
        theme/ThemeManager.h \
    controls/interface/ttoastitem.h \
    controls/interface/tdialogitem.h


SOURCES += \
        qml_plugin.cpp \
        toou2d.cpp \
        t2d.cpp \
        world.cpp \
        theme/theme_binder.cpp \
        theme/theme_handler.cpp \
        theme/ThemeManager.cpp \
    controls/interface/ttoastitem.cpp \
    controls/interface/tdialogitem.cpp


DEFINES += VERSION_IN=\\\"$$VERSION\\\"
DEFINES += URI_STR=\\\"$$uri\\\"

include(./build.pri)
