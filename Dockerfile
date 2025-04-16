FROM debian:bookworm-slim

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
    ca-certificates make git

# Required environment.
ENV PATH="/root/.rbenv/shims:/root/.rbenv/bin:${PATH}"
ENV LC_ALL="C.UTF-8"
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"

# Install ruby, jekyll, and gems.
WORKDIR /app
COPY \
  Gemfile \
  Gemfile.lock \
  *.gemspec \
  jekyll.sh \
  Makefile \
  ruby-check.sh \
  .ruby-version \
  /app
RUN chmod +x ruby-check.sh jekyll.sh
RUN make install-apt install-rbenv install-bundle

# Add a unused git repo to suppress this message when jekyll runs:
#   fatal: not a git repository (or any of the parent directories): .git
RUN git init -q .

# Cleanup.
RUN rm -rf /var/lib/apt/lists/* && rm /app/Makefile

CMD ["./jekyll.sh", "build"]
