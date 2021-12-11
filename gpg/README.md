 $ brew install gnupg

gpg --gen-key

gpg -a --export jaredhanson@gmail.com > public.asc
gpg -a --export-secret-key jaredhanson@gmail.com > secret.asc

gpg --import pubkey.asc
gpg --allow-secret-key-import --import secret.key

gpg -d secretfile.gpg
