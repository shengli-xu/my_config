# Set up SSH keys for GitHub

The following steps are created for **MacOS**. Please check [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux) if you would like to set up everything on Linux.

## Generating a new SSH key and adding it to the ssh-agent

1. Open Terminal.
2. Create a folder for `ssh`.

    ```bash
    mkdir ~/.ssh
    ```

3. Change to the created directory.

   ```bash
   cd ~/.ssh
   ```

4. Paste the text below, replacing the email used in the example with your
   email address.

   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

   > When you're prompted to "Enter a file in which to save the key", you can press Enter to accept the default file location.
5. At the prompt, type a secure passphrase. Press ENTER to skip the step.

   ```bash
   > Enter passphrase (empty for no passphrase): [Type a passphrase]
   > Enter same passphrase again: [Type passphrase again]
   ```

## Adding your SSH key to the ssh-agent

Before adding a new SSH key to the ssh-agent to manage your keys, you should have checked for existing SSH keys and generated a new SSH key. When adding your SSH key to the agent, use the default macOS `ssh-add` command.

1. Start the ssh-agent in the background.

   ```bash
   eval "$(ssh-agent -s)"
   ```

2. Use the given template to modify your `~/.ssh/config` file to automatically load keys into the ssh-agent and store passphrases in your keychain.

3. Add the SSH public key to your account on GitHub. For more information, see "[Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)."
