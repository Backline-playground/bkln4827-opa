ARG APP_BASE=debian:12-slim
FROM ${APP_BASE}
ARG OPA_VERSION=1.16.2
RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates \
 && curl -fsSL -o /usr/local/bin/opa https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64_static \
 && chmod +x /usr/local/bin/opa && rm -rf /var/lib/apt/lists/*
CMD ["opa", "version"]
