.class public Lcom/wepie/snake/helper/update/QiniuEtagUtil;
.super Ljava/lang/Object;
.source "QiniuEtagUtil.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x400000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static data([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 45
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/wepie/snake/helper/update/QiniuEtagUtil;->data([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static data([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 30
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Lcom/wepie/snake/helper/update/QiniuEtagUtil;->stream(Ljava/io/InputStream;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 35
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static file(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 57
    .local v0, "fi":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/wepie/snake/helper/update/QiniuEtagUtil;->stream(Ljava/io/InputStream;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static file(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/wepie/snake/helper/update/QiniuEtagUtil;->file(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static oneBlock([BLjava/io/InputStream;I)[B
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 104
    const/4 v3, 0x0

    .line 106
    .local v3, "sha1":Ljava/security/MessageDigest;
    :try_start_0
    const-string v4, "sha-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 112
    array-length v0, p0

    .line 113
    .local v0, "buffSize":I
    :goto_0
    if-eqz p2, :cond_1

    .line 114
    if-le v0, p2, :cond_0

    move v2, p2

    .line 116
    .local v2, "next":I
    :goto_1
    invoke-virtual {p1, p0, v5, v2}, Ljava/io/InputStream;->read([BII)I

    .line 117
    invoke-virtual {v3, p0, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 118
    sub-int/2addr p2, v2

    .line 119
    goto :goto_0

    .line 107
    .end local v0    # "buffSize":I
    .end local v2    # "next":I
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 110
    const/4 v4, 0x0

    .line 121
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v4

    .restart local v0    # "buffSize":I
    :cond_0
    move v2, v0

    .line 114
    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    goto :goto_2
.end method

.method private static resultEncode([[B)Ljava/lang/String;
    .locals 11
    .param p0, "sha1s"    # [[B

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 132
    const/16 v2, 0x16

    .line 133
    .local v2, "head":B
    aget-object v1, p0, v8

    .line 134
    .local v1, "finalHash":[B
    array-length v3, v1

    .line 135
    .local v3, "len":I
    add-int/lit8 v7, v3, 0x1

    new-array v4, v7, [B

    .line 136
    .local v4, "ret":[B
    array-length v7, p0

    if-eq v7, v10, :cond_1

    .line 137
    const/16 v2, -0x6a

    .line 138
    const/4 v6, 0x0

    .line 140
    .local v6, "sha1":Ljava/security/MessageDigest;
    :try_start_0
    const-string v7, "sha-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 146
    array-length v9, p0

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v5, p0, v7

    .line 147
    .local v5, "s":[B
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 141
    .end local v5    # "s":[B
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 144
    const/4 v7, 0x0

    .line 153
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v6    # "sha1":Ljava/security/MessageDigest;
    :goto_1
    return-object v7

    .line 149
    .restart local v6    # "sha1":Ljava/security/MessageDigest;
    :cond_0
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 151
    .end local v6    # "sha1":Ljava/security/MessageDigest;
    :cond_1
    aput-byte v2, v4, v8

    .line 152
    invoke-static {v1, v8, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    invoke-static {v4}, Lcom/wepie/snake/helper/update/QiniuUrlSafeBase64;->encodeToString([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static stream(Ljava/io/InputStream;J)Ljava/lang/String;
    .locals 13
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-nez v3, :cond_0

    .line 82
    const-string v3, "Fto5o-5ea0sNMlW_75VgGJCv2AcJ"

    .line 91
    :goto_0
    return-object v3

    .line 84
    :cond_0
    const/high16 v3, 0x10000

    new-array v1, v3, [B

    .line 85
    .local v1, "buffer":[B
    const-wide/32 v8, 0x400000

    add-long/2addr v8, p1

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    long-to-int v3, v8

    const/high16 v8, 0x400000

    div-int/2addr v3, v8

    new-array v0, v3, [[B

    .line 86
    .local v0, "blocks":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 87
    const-wide/32 v8, 0x400000

    int-to-long v10, v2

    mul-long/2addr v8, v10

    sub-long v4, p1, v8

    .line 88
    .local v4, "left":J
    const-wide/32 v8, 0x400000

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    const-wide/32 v6, 0x400000

    .line 89
    .local v6, "read":J
    :goto_2
    long-to-int v3, v6

    invoke-static {v1, p0, v3}, Lcom/wepie/snake/helper/update/QiniuEtagUtil;->oneBlock([BLjava/io/InputStream;I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v6    # "read":J
    :cond_1
    move-wide v6, v4

    .line 88
    goto :goto_2

    .line 91
    .end local v4    # "left":J
    :cond_2
    invoke-static {v0}, Lcom/wepie/snake/helper/update/QiniuEtagUtil;->resultEncode([[B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
