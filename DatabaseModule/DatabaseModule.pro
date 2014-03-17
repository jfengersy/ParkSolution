QT       += network sql xml

MYTARGET = $$quote( DatabaseModule%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

#unix:LIBS += -lpq
#win32:LIBS += libpqdll.lib
#INCLUDEPATH += ./Mysql/include
#LIBS += ./Mysql/lib/liblibmysql.a

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "Debug" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "CommonModule", "" )
}

#TARGET = DatabaseModule
TEMPLATE = lib

DEFINES += DATABASEMODULE_LIBRARY

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

HEADERS += \
    qunitydatabase.h \
    databasemodule_global.h \
    qdatabasefactory.h \
    qmysql.h \
    qdatabaseevent.h \
    qdatabasethread.h

SOURCES += \
    qunitydatabase.cpp \
    qdatabasefactory.cpp \
    qmysql.cpp \
    qdatabaseevent.cpp \
    qdatabasethread.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}