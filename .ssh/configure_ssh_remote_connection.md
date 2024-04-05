# How To Configure SSH Key-Based Authentication on a Linux Server

SSH, or secure shell, is an encrypted protocol used to administer and communicate with servers. When working with a Linux server you may often spend much of your time in a terminal session connected to your server through SSH.

## Creating SSH Keys

On your local computer, generate a SSH key pair by typing:

```bash
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen
```

The private key will be called `id_rsa` and the associated public key will be called `id_rsa.pub`.

## Adding the SSH Key to ssh-agent

1. Start the ssh-agent in the background.

   ```bash
   eval "$(ssh-agent -s)"
   ```

2. Use the given template to modify your `~/.ssh/config` file to automatically load keys into the ssh-agent and store passphrases in your keychain.

## Copying an SSH Public Key to Your Server

We can do this by outputting the content of our public SSH key on our local computer and piping it through an SSH connection to the remote server.

```bash
cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```

You may see a message like this:

```txt
Output
The authenticity of host '203.0.113.1 (203.0.113.1)' can't be established.
ECDSA key fingerprint is fd:fd:d4:f9:77:fe:73:84:e1:55:00:ad:d6:6d:22:fe.
Are you sure you want to continue connecting (yes/no)? yes
```

This means that your local computer does not recognize the remote host. This will happen the first time you connect to a new host. Type `yes` and press `ENTER` to continue.

Afterwards, you will be prompted with the password of the account you are
attempting to connect to:

```txt
Output
username@203.0.113.1's password:
```

After entering your password, the content of your `id_rsa.pub` key will be copied to the end of the `authorized_keys` file of the remote user’s account. Continue to the next section if this was successful.
