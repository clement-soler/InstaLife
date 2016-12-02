# InstaLife
A Ruby on Rails Instagram clone

Ruby version: 2.3.1
Rails version: 5.0.0.1

### Run app on my server (VPS Debian 8 - Jessie)
- Install Ruby and Rails on your server
- Install node js to use Uglifier (JavaScript compressor) because you need javascript runtime
- Git clone this repo or transfer your file via ftp

```
rails s --binding=instalife.csoler.xyz --daemon
```
rails s (start server) --binding=IP (target ip or domain.name) --daemon (run in background)

To kill the process:
```
ps aux  | grep your_process (puma here)
```
Find id associate to the process in array and kill it:
```
kill 1234
```
