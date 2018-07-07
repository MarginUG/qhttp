QHTTP_DIR=$$PWD
QHTTP_SRC_DIR=$${QHTTP_DIR}/src
QHTTP_INC_DIR=$${QHTTP_DIR}/include
QHTTP_INC_DIR_2=$${QHTTP_INC_DIR}/qhttp

INCLUDEPATH +=$${QHTTP_DIR}
INCLUDEPATH += $${QHTTP_SRC_DIR}
INCLUDEPATH += $${QHTTP_INC_DIR}

# Joyent http_parser
SOURCES  += $$QHTTP_DIR/http-parser/http_parser.c
HEADERS  += $$QHTTP_DIR/http-parser/http_parser.h

SOURCES  += \
    $$QHTTP_SRC_DIR/qhttpabstracts.cpp \
    $$QHTTP_SRC_DIR/qhttpserverconnection.cpp \
    $$QHTTP_SRC_DIR/qhttpserverrequest.cpp \
    $$QHTTP_SRC_DIR/qhttpserverresponse.cpp \
    $$QHTTP_SRC_DIR/qhttpserver.cpp \
    $$QHTTP_SRC_DIR/qhttpsslsocket.cpp

HEADERS  += \
    $$QHTTP_INC_DIR_2/qhttpfwd.hpp \
    $$QHTTP_INC_DIR_2/qhttpabstracts.hpp \
    $$QHTTP_INC_DIR_2/qhttpserverconnection.hpp \
    $$QHTTP_INC_DIR_2/qhttpserverrequest.hpp \
    $$QHTTP_INC_DIR_2/qhttpserverresponse.hpp \
    $$QHTTP_INC_DIR_2/qhttpserver.hpp \
    $$QHTTP_INC_DIR_2/qhttpsslsocket.hpp


contains(DEFINES, QHTTP_HAS_CLIENT) {
    SOURCES += \
        $$QHTTP_SRC_DIR/qhttpclientrequest.cpp \
        $$QHTTP_SRC_DIR/qhttpclientresponse.cpp \
        $$QHTTP_SRC_DIR/qhttpclient.cpp

    HEADERS += \
        $$QHTTP_INC_DIR_2/qhttpclient.hpp \
        $$QHTTP_INC_DIR_2/qhttpclientresponse.hpp \
        $$QHTTP_INC_DIR_2/qhttpclientrequest.hpp
}
