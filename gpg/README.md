 $ brew install gnupg

gpg --gen-key

gpg -a --export jaredhanson@gmail.com > public.asc
gpg -a --export-secret-key jaredhanson@gmail.com > secret.asc

gpg --import public.asc
gpg --allow-secret-key-import --import secret.asc

gpg -d secretfile.gpg
