# Minimal container for database schema versioning
FROM alpine:latest

# Add schema version info
ARG SCHEMA_VERSION=unknown
RUN echo "Database schema version: ${SCHEMA_VERSION}" > /schema-version.txt

CMD ["cat", "/schema-version.txt"]
