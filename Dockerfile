FROM ruby:2.5.1-alpine as gembuilder

RUN apk add --update alpine-sdk
RUN apk add git
RUN gem install bundler jekyll

COPY ./Gemfile /var/jekyll/Gemfile
COPY ./noltarium-documentation-theme.gemspec /var/jekyll/noltarium-documentation-theme.gemspec
WORKDIR /var/jekyll

RUN bundler install

FROM ruby:2.5.1-alpine

RUN apk add --update alpine-sdk
RUN apk add openjdk8-jre ttf-dejavu graphviz git

COPY . /var/jekyll

WORKDIR /var/jekyll


FROM ruby:2.5.1-alpine

RUN apk add --update alpine-sdk
RUN apk add openjdk8-jre ttf-dejavu graphviz ttf-droid ttf-droid-nonlatin git
RUN mkdir -p /opt/plantuml
RUN wget https://netix.dl.sourceforge.net/project/plantuml/plantuml.jar -O /opt/plantuml/plantuml.jar

RUN echo "#!/bin/sh" > /usr/local/bin/plantuml
RUN echo "java -jar /opt/plantuml/plantuml.jar \"\$1\" \"\$2\"" >> /usr/local/bin/plantuml
RUN chmod u+x /usr/local/bin/plantuml

# copy the gem dependencies from layer before
COPY --from=gembuilder /usr/local/bundle /usr/local/bundle

COPY . /var/jekyll

WORKDIR /var/jekyll
RUN jekyll build --verbose --source /var/jekyll --destination /tmp/jekyll_generated

EXPOSE 4000


CMD [ "bundle","exec","jekyll","serve","--host","0.0.0.0" ]
