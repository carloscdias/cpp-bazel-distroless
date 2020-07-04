FROM gcc:6 AS build-env
# download and install bazel
RUN curl https://github.com/bazelbuild/bazel/releases/download/3.3.1/bazel-3.3.1-installer-linux-x86_64.sh -OL
RUN chmod +x bazel-3.3.1-installer-linux-x86_64.sh && ./bazel-3.3.1-installer-linux-x86_64.sh
# setup basic structure
WORKDIR /app
RUN mkdir output 
