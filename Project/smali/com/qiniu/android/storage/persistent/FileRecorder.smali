.class public final Lcom/qiniu/android/storage/persistent/FileRecorder;
.super Ljava/lang/Object;
.source "FileRecorder.java"

# interfaces
.implements Lcom/qiniu/android/storage/Recorder;


# instance fields
.field public directory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qiniu/android/storage/persistent/FileRecorder;->directory:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 24
    .local v1, "r":Z
    if-nez v1, :cond_1

    .line 25
    new-instance v2, Ljava/io/IOException;

    const-string v3, "mkdir failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    .end local v1    # "r":Z
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    new-instance v2, Ljava/io/IOException;

    const-string v3, "does not mkdir"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_1
    return-void
.end method

.method private outOfDate(Ljava/io/File;)Z
    .locals 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public del(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/storage/persistent/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 107
    return-void
.end method

.method public get(Ljava/lang/String;)[B
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 66
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/qiniu/android/storage/persistent/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v2, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 68
    .local v3, "fi":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 69
    .local v0, "data":[B
    const/4 v5, 0x0

    .line 71
    .local v5, "read":I
    :try_start_0
    invoke-direct {p0, v2}, Lcom/qiniu/android/storage/persistent/FileRecorder;->outOfDate(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 91
    :cond_0
    :goto_0
    return-object v6

    .line 75
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    .line 76
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v3    # "fi":Ljava/io/FileInputStream;
    .local v4, "fi":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    move-object v3, v4

    .line 81
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 83
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    :cond_2
    :goto_2
    if-eqz v5, :cond_0

    move-object v6, v0

    .line 91
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 85
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public set(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 42
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/qiniu/android/storage/persistent/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 45
    .local v2, "fo":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v2    # "fo":Ljava/io/FileOutputStream;
    .local v3, "fo":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 50
    .end local v3    # "fo":Ljava/io/FileOutputStream;
    .restart local v2    # "fo":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_0

    .line 52
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    :cond_0
    :goto_1
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 54
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fo":Ljava/io/FileOutputStream;
    .restart local v3    # "fo":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fo":Ljava/io/FileOutputStream;
    .restart local v2    # "fo":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
