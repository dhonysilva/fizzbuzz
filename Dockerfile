FROM elixir:1.14

RUN mix local.hex --force \
  && mix archive.install --force hex phx_new 1.7.2 \
  && apt-get update \
  && apt-get install -y build-essential \
  && apt-get install -y inotify-tools \
  && mix local.rebar --force



ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
