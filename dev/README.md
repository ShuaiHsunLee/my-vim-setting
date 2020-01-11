## yarn

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
```

## serverless

```
npm install -g serverless
```

[setting aws credentials](https://serverless.com/framework/docs/providers/aws/guide/credentials/)

## Webstorm

```
sudo snap install webstorm --classic
```