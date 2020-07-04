# cpp-bazel-distroless

This image downloads and install [bazel](https://bazel.build/) on top of a compatible
environment for C++ [distroless](https://github.com/GoogleContainerTools/distroless)
projects.

## Example

You can have this multiple stage Dockerfile on the root directory of your project.

```Dockerfile
FROM carlosdias/cpp-bazel-distroless:1.0 as builder
RUN bazel --output_user_root=output build --compilation_mode=opt :target
FROM gcr.io/distroless/cc
COPY --from=build-env /app/bazel-bin/target /app/target
CMD ["/app/target"]
```

More details and versions in [carlosdias/cpp-bazel-distroless](https://hub.docker.com/r/carlosdias/cpp-bazel-distroless)
