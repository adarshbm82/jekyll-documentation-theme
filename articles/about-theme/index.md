---
title: "The Blog Theme"
navigation: true
breadcrumb: the theme

---

## Local Development

```bash
docker run -v .:/var/jekyll -p 4000:4000 $(docker build .  2>/dev/null | awk '/Successfully built/{print $NF}')
```
**only mount the needet parts**
```bash
docker run \
  -v $(pwd)/Gemfile:/var/jekyll/Gemfile \
  -v $(pwd)/_config.yml:/var/jekyll/_config.yml \
  -v $(pwd)/index.md:/var/jekyll/index.md \
  -v $(pwd)/links.md:/var/jekyll/links.md \
  -v $(pwd)/_layouts:/var/jekyll/_layouts \
  -v $(pwd)/_data:/var/jekyll/_data \
  -v $(pwd)/articles:/var/jekyll/articles \
  -v $(pwd)/_includes:/var/jekyll/_includes \
  -v $(pwd)/_plugins:/var/jekyll/_plugins \
  -v $(pwd)/_sass:/var/jekyll/_sass \
  -v $(pwd)/assets:/var/jekyll/assets \
  -p 4000:4000 $(docker build -t nolte/jekyll-page:latest . 2>/dev/null | awk '/Successfully built/{print $NF}')
```
**generate and start the blog**
```bash
docker run \
  -p 80:80 $(docker build -f ./DockerfilePresent -t nolte/jekyll-page:nginx-alpine .  2>/dev/null | awk '/Successfully built/{print $NF}')

```

**build only**
```bash
docker build -t nolte/jekyll-page:latest . && \
docker build -f ./DockerfilePresent -t nolte/jekyll-page:nginx-alpine .
```
## How it Works

 How the Jekyll Theme Works

 using  [Docker multistage-build](https://docs.docker.com/develop/develop-images/multistage-build/) for quick building, and content generation. So we got one Docker Image with the full jekyll dependencies ca 450MB, and one small nginx ca 18MB.

<div class="row">
<div class="col-sm-6">
{% mermaid %}
graph TB
   gembuilder[Gem Building Image] == copy downloaded gems ==> jekyll[Ruby Jekyll Container]
   jekyll == Copy Generated static content ==> nginx[Nginx Present Container]
   click jekyll "http://www.github.com" "This is a link"
{% endmermaid %}
</div>
<div class="col-sm-6">
abxc
</div>
</div>


{% plantuml %}
[First] - [Second]
{% endplantuml %}



### How to unse

#### Local Install


## Used Dependencies

## Open Tasks
