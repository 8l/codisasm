#ifndef RETURN_STATUS
#define RETURN_STATUS

typedef enum {
  STATUS_OK = 0,
  STATUS_FILE_NOT_FOUND,
  STATUS_UNKNOWN_FORMAT,
  STATUS_INVALID_FILE,
  STATUS_LAST //must be the last
} enum_status_t;

typedef uint32_t status_t;

#endif /* RETURN_STATUS */
