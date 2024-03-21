# spring-long-shutdown

Demo project to show slow shutdown in case of spring boot 3.2.x.
Use `./startstop.sh` to demo a start-stop sequence.

It takes now ~ 11 seconds to shutdown.

Additional info:
- Project uses tomcat in the background
- There is no slow shutdown with spring boot 3.1.x.
- 3.1.10 and 3.2.3 use the same tomcat version
- Shutdown is faster with server.shutdown=graceful

Project generated with [spring initialize](https://start.spring.io/)https://start.spring.io/.
