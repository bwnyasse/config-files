# keystore Generation 

Remember your keypass !!!

    keytool -genkey -v -keystore $RELEASE_KEY -alias $ALIAS_NAME -keyalg RSA -keysize 2048 -validity 10000
    keytool -exportcert -alias $ALIAS_NAME -keystore $RELEASE_KEY | openssl sha1 -binary | openssl base64