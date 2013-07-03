# Kamino (beta)
Shell script configuration management

Kamino is a tool to help you backup or synchronize your configuration files.

It can be cloned across multiples environments.

With Kamino all your team can easyly share the same dotfiles, vhosts, and database configuration.

It's written in shell script so it runs anywhere.

> if you hate running the same configuration on multiple machines, Kamino is for you.

## Storage
All config files are stored in an Amazon S3 Bucket, so we encourage you to create an account there and reserve an exclusive bucket for Kamino.

## Usage

## Add a config file to the storage
```bash
kamino upload /etc/hosts
```

## Using the latest version of a kamino file on your friend machine or server.

```bash
kamino clone hosts
```

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
s3cmd --configure

## Install
```bash
git clone https://github.com/adlayer/kamino.git
cd kamino
make install
```