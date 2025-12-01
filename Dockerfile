FROM alpine:latest

COPY flask-app /usr/share/projects

WORKDIR /usr/share/projects

ENV PATH="/root/.local/bin:${PATH}"

RUN wget -qO- https://astral.sh/uv/install.sh | sh \
    && mv /root/.local/bin/uv /usr/local/bin/

RUN uv python install \
    && uv add flask

ENTRYPOINT [ "uv", "run", "flask", "--app", "hello", "run", "--host=0.0.0.0" ]