FROM quay.io/invidious/invidious:latest
HEALTHCHECK --interval=30s --timeout=3s --retries=5 --start-period=10s \
  CMD wget -nv --tries=1 --spider http://127.0.0.1:3000/api/v1/comments/jNQXAC9IVRw || exit 1
