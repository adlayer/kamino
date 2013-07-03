# Kamino (beta)
## Shell script configuration management

Kamino is a tool to help you backup or synchronize your configuration files, it can be used across multiples environments.

With Kamino all your team can easily share the same dotfiles, vhosts, and database configuration files.
It's written in shell script, so it runs anywhere.

> if you hate run the same configuration on multiple machines, Kamino is the right tool for you.

### Storage
All config files are stored in an Amazon S3 Bucket, so we encourage you to create an account there and reserve an exclusive bucket for Kamino.

### Usage
kamino [env] [command] [value]

#### Add a config file to the storage
```bash
kamino --dev upload /etc/hosts
```

#### Using the latest version of vhost file on your co-worker machine.

```bash
kamino --dev clone hosts
```

#### Configuring a previouly uploaded config in a production environment 
kamino --prod clone hosts

Kamino will know exactly where to place your config file.

## Dependencies

### Ubuntu
```bash
apt-get install s3cmd
```

## OSX
```bash
git clone https://github.com/s3tools/s3cmd.git
cd s3cmd
sudo python setup.py install
cd ..
```

## Configuration
```
s3cmd --configure
```

## Install
```bash
git clone https://github.com/adlayer/kamino.git
cd kamino
make install
```
During the kamino install process you will be asked about the name of the bucket in your S3 account