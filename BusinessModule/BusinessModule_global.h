#ifndef BUSINESSMODULE_GLOBAL_H
#define BUSINESSMODULE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(DATAPARSE_LIBRARY)
#  define BUSINESSMODULESHARED_EXPORT Q_DECL_EXPORT
#else
#  define BUSINESSMODULESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // BUSINESSMODULE_GLOBAL_H
