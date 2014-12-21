# docker-hexo

A Docker Container for [Hexo](http://hexo.io/).

[docker-hexo](https://github.com/billryan/docker-hexo) image based on base image ubuntu:14.04, pandoc is optional for processing markdown files with better MathJax support and enhanced markdown such as footnotes.

Since docker do not provide easy user permissions control inside container. You should set the gid and uid as your current user while modifying the Dockerfile, `$UID=1000` and `$GID=100` are the default uid and gid.

## Use example  

For ease of use, you can set alias for tedious docker command in `~/.bashrc` or `~/.zshenv`. Be sure your current user are in `docker` group.

```
alias docker-hexo='docker run --rm -v "$PWD:/blog" -p 4000:4000 billryan/hexo'
alias hexo='docker-hexo hexo'
```

Use `docker-hexo` for `npm install ...`, and `hexo` for `hexo ...`

### Example  

```
hexo init <folder>
cd <folder>
docker-hexo npm install
```

If you want to use pandoc for markdown renderer, replace the `docker-hexo` with the following: 

```
alias docker-hexo='docker run --rm -v "$PWD:/blog" -p 4000:4000 billryan/hexo:latest-pandoc'
```

Refer to [wzpan/hexo-renderer-pandoc](https://github.com/wzpan/hexo-renderer-pandoc) for more infomation. MathJax works perfect with pandoc, [Play MathJax with hexo-renderer-pandoc](http://blog.billryan.me/posts/2014/05/play-mathjax-with-pandoc.html) is a good reference.

## Install Hexo plugins  

Various plugins can be found on [Plugins · hexojs/hexo Wiki](https://github.com/hexojs/hexo/wiki/plugins), replace `npm` with `docker-hexo npm`, happy `Hexo` with `docker-hexo`. :)
