# Initial Course Installs

## TablePlus

[TablePlus](https://tableplus.io/) will let you view, query and manage your SQLite databases during the course.

## Ruby

### Setup

See if Ruby is installed.

```bash
which ruby
```

Check which version is installed. Most likely it will be version 2.7.x.

```bash
ruby --version
```

## Installing Ruby

> **Prerequisite:** For rvm to install correctly, you may need the Xcode command line tools. Type this command into your terminal and wait. `xcode-select --install`

### rvm

Install [`rvm`](https://rvm.io/) which lets you manage multiple versions of Ruby on your system.

```
curl -sSL https://get.rvm.io | bash -s stable
```

Once that installation completes, you can now use it to install the latest version of Ruby.

```bash
rvm install 2.4.1
```

After it is installed, you'll need to reload your bash session. You can either open a new terminal tab or `source ~/.zshrc`.

Now let's see if it worked by creating a running a simply Ruby script.

```
mkdir ~/workspace/ruby && cd $_
echo '3.times do; puts "nss"; end' >> test.rb
ruby test.rb
```

You should see the string "nss" printed three times in your terminal.


