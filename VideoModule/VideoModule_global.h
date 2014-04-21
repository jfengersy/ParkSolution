#ifndef VIDEOMODULE_GLOBAL_H
#define VIDEOMODULE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(VIDEOMODULE_LIBRARY)
#  define VIDEOMODULESHARED_EXPORT Q_DECL_EXPORT
#else
#  define VIDEOMODULESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // VIDEOMODULE_GLOBAL_H
