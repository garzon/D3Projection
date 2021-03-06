TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++11

SOURCES += main.cpp \
    sphereobject.cpp \
    scene.cpp \
    camera.cpp \
    isceneobject.cpp \
    planeobject.cpp

HEADERS += \
    sphereobject.h \
    scene.h \
    camera.h \
    isceneobject.h \
    planeobject.h


LIBS += /usr/local/lib/libopencv*.so
