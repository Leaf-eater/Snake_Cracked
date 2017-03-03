.class public final Lcom/qiniu/android/dns/http/DnspodEnterprise;
.super Ljava/lang/Object;
.source "DnspodEnterprise.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final id:Ljava/lang/String;

.field private final ip:Ljava/lang/String;

.field private final key:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "119.29.29.29"

    invoke-direct {p0, p1, p2, v0}, Lcom/qiniu/android/dns/http/DnspodEnterprise;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->ip:Ljava/lang/String;

    .line 29
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 31
    .local v1, "k":[B
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 35
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 36
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    const-string v3, "DES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 107
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/android/dns/util/Hex;->decodeHex([C)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 110
    .local v1, "decrypted":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decrypted":[B
    :goto_0
    return-object v3

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v3, ""

    goto :goto_0
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    const-string v3, "DES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 93
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 94
    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 95
    .local v2, "encryptedString":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/qiniu/android/dns/util/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 101
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encryptedString":[B
    :goto_0
    return-object v3

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 24
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .param p2, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v21, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/d?ttl=1&dn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/qiniu/android/dns/http/DnspodEnterprise;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    .local v21, "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 48
    .local v10, "httpConn":Ljava/net/HttpURLConnection;
    const/16 v2, 0xbb8

    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    const/16 v2, 0x1770

    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 51
    .local v19, "responseCode":I
    const/16 v2, 0xc8

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 52
    const/16 v17, 0x0

    .line 87
    :cond_0
    :goto_0
    return-object v17

    .line 55
    :cond_1
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    .line 56
    .local v14, "length":I
    if-lez v14, :cond_2

    const/16 v2, 0x400

    if-le v14, v2, :cond_3

    .line 57
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 60
    .local v13, "is":Ljava/io/InputStream;
    new-array v8, v14, [B

    .line 61
    .local v8, "data":[B
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .line 62
    .local v16, "read":I
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 63
    if-gtz v16, :cond_4

    .line 64
    const/16 v17, 0x0

    goto :goto_0

    .line 66
    :cond_4
    new-instance v18, Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v8, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .line 67
    .local v18, "response":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/qiniu/android/dns/http/DnspodEnterprise;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 68
    .local v20, "result":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, "r1":[Ljava/lang/String;
    array-length v2, v15

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    .line 70
    const/16 v17, 0x0

    goto :goto_0

    .line 74
    :cond_5
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 78
    .local v5, "ttl":I
    const/4 v2, 0x0

    aget-object v2, v15, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, "ips":[Ljava/lang/String;
    array-length v2, v12

    if-nez v2, :cond_6

    .line 80
    const/16 v17, 0x0

    goto :goto_0

    .line 75
    .end local v5    # "ttl":I
    .end local v12    # "ips":[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 76
    .local v9, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_0

    .line 82
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "ttl":I
    .restart local v12    # "ips":[Ljava/lang/String;
    :cond_6
    array-length v2, v12

    new-array v0, v2, [Lcom/qiniu/android/dns/Record;

    move-object/from16 v17, v0

    .line 83
    .local v17, "records":[Lcom/qiniu/android/dns/Record;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v22, 0x3e8

    div-long v6, v2, v22

    .line 84
    .local v6, "time":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v2, v12

    if-ge v11, v2, :cond_0

    .line 85
    new-instance v2, Lcom/qiniu/android/dns/Record;

    aget-object v3, v12, v11

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    aput-object v2, v17, v11

    .line 84
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
