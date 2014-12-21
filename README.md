# docker-hexo

A Docker Container for [Hexo](http://hexo.io/).

[docker-hexo](https://github.com/billryan/docker-hexo) image based on base image ubuntu:14.04, pandoc is optional for processing markdown files with better MathJax support and enhanced markdown such as footnotes.

## Use example  

For ease of use, you can set alias for tedious docker command in `~/.bashrc` or `~/.zshenv`.

```
alias docker-hexo='sudo docker run --rm -v "$PWD:/blog" billryan/hexo'
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
alias docker-hexo='sudo docker run --rm -v "$PWD:/blog" billryan/hexo:latest-pandoc'
```

Refer to [wzpan/hexo-renderer-pandoc](https://github.com/wzpan/hexo-renderer-pandoc) for more infomation. MathJax works perfect with pandoc, [Play MathJax with hexo-renderer-pandoc](http://blog.billryan.me/posts/2014/05/play-mathjax-with-pandoc.html) is a good reference.

## Install Hexo plugins  

Various plugins can be found on [Plugins · hexojs/hexo Wiki](https://github.com/hexojs/hexo/wiki/plugins), replace `npm` with `docker-hexo npm`, happy `Hexo` with `docker-hexo`. :)
