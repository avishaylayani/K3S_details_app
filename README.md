Creating gpg key: 
gpg --gen-key

Get existing keys: 
gpg --list-keys

Encrypting the key: 
sops -e --config details_app/.sops.yaml details_app/values.yaml > encrypted_values.yaml

For BASH script, import the private key to be able to decrypt the values file : 
gpg --import private.key

Decrypting the values file, to a one with decrypted values
sops -d values_encrypted.yaml > details_app/values.yaml

Exporting Private key from existing, loaded, gpg key: 
gpg --export-secret-key 62917C0D840BFB257B005527B6AC02EBC574597F > private.key

Export public keys:
gpg -armor --export 62917C0D840BFB257B005527B6AC02EBC574597F > public.key


Dependencies: 
gpg encryption:  sudo apt-get install gnupg
sops - helm secret plugin
helm 
k3s

port 8000 open
port 5432 open