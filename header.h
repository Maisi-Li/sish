#ifdef HEADER_H_
#define HEADER_H_

#define LOG 1

#ifdef LOG
#define LOG(format, ...) slog( __func__, format, ##__VA_ARGS__)
#else 
#define LOG(format, ...)
#endif


//util.c
void
slog(const char*, ...);


#endif
