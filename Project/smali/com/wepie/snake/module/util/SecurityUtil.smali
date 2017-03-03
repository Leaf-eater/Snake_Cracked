.class public Lcom/wepie/snake/module/util/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "SecurityUtil"

    sput-object v0, Lcom/wepie/snake/module/util/SecurityUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    .line 240
    .local v0, "b":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static generateGUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 148
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKey([B)Ljava/security/PublicKey;
    .locals 4
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 153
    .local v1, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 154
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 155
    .local v2, "publicKey":Ljava/security/PublicKey;
    return-object v2
.end method

.method public static hmacSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v5, "/TzSbON46vSq88gJyzosplEIoDyMpssbFDCj&"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 247
    .local v4, "secretKey":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HmacSHA1"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 249
    .local v3, "secret":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 250
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 252
    .local v0, "digest":[B
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 258
    .end local v0    # "digest":[B
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :goto_0
    return-object v5

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 258
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const-string v5, ""

    goto :goto_0

    .line 255
    :catch_1
    move-exception v1

    .line 256
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 199
    .local v0, "data":[B
    invoke-static {v0}, Lcom/wepie/snake/module/util/SecurityUtil;->md5([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    .end local v0    # "data":[B
    :goto_0
    return-object v2

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 202
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static md5([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 179
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 180
    .local v1, "msgDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 181
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 184
    .end local v1    # "msgDigest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 184
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static md5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v1, ""

    .line 95
    :goto_0
    return-object v1

    .line 89
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/wepie/snake/module/util/SecurityUtil;->md5Hash([B)[B

    move-result-object v0

    .line 90
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/wepie/snake/module/util/SecurityUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0    # "bytes":[B
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static md5Hash(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 125
    if-nez p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v2

    .line 128
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/wepie/snake/module/util/SecurityUtil;->md5Hash(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 135
    if-eqz v1, :cond_0

    .line 137
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    goto :goto_0

    .line 132
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 135
    :goto_1
    if-eqz v0, :cond_0

    .line 137
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 138
    :catch_2
    move-exception v3

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_2

    .line 137
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 140
    :cond_2
    :goto_3
    throw v2

    .line 138
    :catch_3
    move-exception v3

    goto :goto_3

    .line 135
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 132
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static md5Hash(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 99
    if-nez p0, :cond_0

    .line 121
    :goto_0
    return-object v3

    .line 104
    :cond_0
    const/16 v4, 0xfbc

    new-array v1, v4, [B

    .line 107
    .local v1, "buffer":[B
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 108
    .local v0, "algorithm":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 109
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 110
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 114
    .end local v0    # "algorithm":Ljava/security/MessageDigest;
    .end local v2    # "length":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 112
    .restart local v0    # "algorithm":Ljava/security/MessageDigest;
    .restart local v2    # "length":I
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 113
    .local v3, "messageDigest":[B
    goto :goto_0

    .line 118
    .end local v0    # "algorithm":Ljava/security/MessageDigest;
    .end local v2    # "length":I
    .end local v3    # "messageDigest":[B
    :catch_1
    move-exception v4

    goto :goto_0

    .line 116
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public static md5Hash([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 73
    :cond_1
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 74
    .local v0, "algorithm":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 75
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .local v1, "messageDigest":[B
    goto :goto_0

    .line 78
    .end local v0    # "algorithm":Ljava/security/MessageDigest;
    .end local v1    # "messageDigest":[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static md5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p0}, Lcom/wepie/snake/module/util/SecurityUtil;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 227
    .local v0, "digest":[B
    invoke-static {v0}, Lcom/wepie/snake/module/util/SecurityUtil;->asHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static md5String([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 214
    invoke-static {p0}, Lcom/wepie/snake/module/util/SecurityUtil;->md5([B)[B

    move-result-object v0

    .line 215
    .local v0, "digest":[B
    invoke-static {v0}, Lcom/wepie/snake/module/util/SecurityUtil;->asHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rawUrlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 262
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[*]"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaDecode([BLjava/security/Key;)[B
    .locals 2
    .param p0, "cipherData"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 160
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 161
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static rsaEncode([BLjava/security/Key;)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 166
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 167
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static sha1Hash([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 51
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object v1

    .line 56
    :cond_1
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 57
    .local v0, "algorithm":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 58
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 59
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    .local v1, "messageDigest":[B
    goto :goto_0

    .line 61
    .end local v0    # "algorithm":Ljava/security/MessageDigest;
    .end local v1    # "messageDigest":[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 44
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    const-string v0, ""

    .line 47
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/wepie/snake/module/util/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
