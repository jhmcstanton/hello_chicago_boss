# hello_chicago_boss

Just the initial [`chicago boss`](http://chicagoboss.org/) project with a few tweaks.

- [Hello World controller](src/controller/hello_chicago_boss_greeting_controller.erl)
- [/ route](priv/hello_chicago_boss.routes)
- [Tweaked boss config](boss.config) to support receiving connections outside of `localhost`
- [Dockerfile](./Dockerfile) that runs the service in production mode

Not planning on making any changes to this, just need a simple `hello world` application that could be thrown
in docker containers for another project. Not publishing the image either.
