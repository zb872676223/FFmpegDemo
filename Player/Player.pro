TEMPLATE = app
CONFIG += c++11
QT += core gui widgets
TARGET = Player

win32{
    FFMPEGPATH = G:/Code/FFMPEG/ffmpeg
}
unix{
    FFMPEGPATH = /usr/local/ffmpeg/shared
}
INCLUDEPATH += $${FFMPEGPATH}/include
DEPENDPATH += $${FFMPEGPATH}/include

LIBS += -L$${FFMPEGPATH}/lib -lavcodec \
    -lavdevice \
    -lavfilter \
    -lavformat \
    -lavutil \
    -lpostproc \
    -lswresample \
    -lswscale

SOURCES += main.cpp \
    encodertmp.cpp \
    openglwindow.cpp \
    widget.cpp

FORMS +=

HEADERS += \
    encodertmp.h \
    openglwindow.h \
    widget.h

RESOURCES += \
    shader.qrc
