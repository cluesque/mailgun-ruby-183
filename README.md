# README

A very bare bones rails application demonstrating a bug in the mailgun-ruby gem.

https://github.com/mailgun/mailgun-ruby/issues/183

In one shell, run the fake mailgun server:

```
FAKE_MAILGUN_DELAY=90 ./bin/fake_mailgun.rb -p 8025
```

In another, rails console:

```
$ rails c
irb(main):001:0> SimpleMailer.hello_email('foo@example.net', 'hello there').deliver_now
```

That mail send will not return until the delay elapses.
