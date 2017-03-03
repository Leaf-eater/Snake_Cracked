.class final Lcom/qiniu/android/storage/FormUploader;
.super Ljava/lang/Object;
.source "FormUploader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static post([BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/Client;Lcom/qiniu/android/storage/Configuration;)V
    .locals 17
    .param p0, "data"    # [B
    .param p1, "file"    # Ljava/io/File;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "token"    # Lcom/qiniu/android/storage/UpToken;
    .param p4, "completionHandler"    # Lcom/qiniu/android/storage/UpCompletionHandler;
    .param p5, "optionsIn"    # Lcom/qiniu/android/storage/UploadOptions;
    .param p6, "client"    # Lcom/qiniu/android/http/Client;
    .param p7, "config"    # Lcom/qiniu/android/storage/Configuration;

    .prologue
    .line 58
    move-object/from16 v4, p2

    .line 59
    .local v4, "key":Ljava/lang/String;
    new-instance v16, Lcom/qiniu/android/utils/StringMap;

    invoke-direct/range {v16 .. v16}, Lcom/qiniu/android/utils/StringMap;-><init>()V

    .line 60
    .local v16, "params":Lcom/qiniu/android/utils/StringMap;
    new-instance v9, Lcom/qiniu/android/http/PostArgs;

    invoke-direct {v9}, Lcom/qiniu/android/http/PostArgs;-><init>()V

    .line 61
    .local v9, "args":Lcom/qiniu/android/http/PostArgs;
    if-eqz p2, :cond_2

    .line 62
    const-string v5, "key"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Lcom/qiniu/android/utils/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/qiniu/android/utils/StringMap;

    .line 63
    iput-object v4, v9, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    .line 69
    :goto_0
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    .line 73
    :cond_0
    const-string v5, "token"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/qiniu/android/utils/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/qiniu/android/utils/StringMap;

    .line 75
    if-eqz p5, :cond_3

    move-object/from16 v3, p5

    .line 76
    .local v3, "options":Lcom/qiniu/android/storage/UploadOptions;
    :goto_1
    iget-object v5, v3, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/qiniu/android/utils/StringMap;->putFileds(Ljava/util/Map;)Lcom/qiniu/android/utils/StringMap;

    .line 78
    iget-boolean v5, v3, Lcom/qiniu/android/storage/UploadOptions;->checkCrc:Z

    if-eqz v5, :cond_1

    .line 79
    const-wide/16 v14, 0x0

    .line 80
    .local v14, "crc":J
    if-eqz p1, :cond_4

    .line 82
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/qiniu/android/utils/Crc32;->file(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 89
    :goto_2
    const-string v5, "crc32"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/qiniu/android/utils/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/qiniu/android/utils/StringMap;

    .line 92
    .end local v14    # "crc":J
    :cond_1
    new-instance v10, Lcom/qiniu/android/storage/FormUploader$1;

    invoke-direct {v10, v3, v4}, Lcom/qiniu/android/storage/FormUploader$1;-><init>(Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;)V

    .line 103
    .local v10, "progress":Lcom/qiniu/android/http/ProgressHandler;
    move-object/from16 v0, p0

    iput-object v0, v9, Lcom/qiniu/android/http/PostArgs;->data:[B

    .line 104
    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    .line 105
    iget-object v5, v3, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    iput-object v5, v9, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    .line 106
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/qiniu/android/http/PostArgs;->params:Lcom/qiniu/android/utils/StringMap;

    .line 108
    new-instance v2, Lcom/qiniu/android/storage/FormUploader$2;

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/qiniu/android/storage/FormUploader$2;-><init>(Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/http/Client;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;)V

    .line 139
    .local v2, "completion":Lcom/qiniu/android/http/CompletionHandler;
    move-object/from16 v0, p7

    iget-object v5, v0, Lcom/qiniu/android/storage/Configuration;->up:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v5, v5, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v12, v3, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v7, p6

    move-object v11, v2

    invoke-virtual/range {v7 .. v12}, Lcom/qiniu/android/http/Client;->asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 140
    return-void

    .line 65
    .end local v2    # "completion":Lcom/qiniu/android/http/CompletionHandler;
    .end local v3    # "options":Lcom/qiniu/android/storage/UploadOptions;
    .end local v10    # "progress":Lcom/qiniu/android/http/ProgressHandler;
    :cond_2
    const-string v5, "?"

    iput-object v5, v9, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v3

    goto :goto_1

    .line 83
    .restart local v3    # "options":Lcom/qiniu/android/storage/UploadOptions;
    .restart local v14    # "crc":J
    :catch_0
    move-exception v13

    .line 84
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 87
    .end local v13    # "e":Ljava/io/IOException;
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/qiniu/android/utils/Crc32;->bytes([B)J

    move-result-wide v14

    goto :goto_2
.end method

.method static upload(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 8
    .param p0, "client"    # Lcom/qiniu/android/http/Client;
    .param p1, "config"    # Lcom/qiniu/android/storage/Configuration;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Lcom/qiniu/android/storage/UpToken;
    .param p5, "completionHandler"    # Lcom/qiniu/android/storage/UpCompletionHandler;
    .param p6, "options"    # Lcom/qiniu/android/storage/UploadOptions;

    .prologue
    .line 53
    const/4 v0, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/qiniu/android/storage/FormUploader;->post([BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/Client;Lcom/qiniu/android/storage/Configuration;)V

    .line 54
    return-void
.end method

.method static upload(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/storage/Configuration;[BLjava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 8
    .param p0, "httpManager"    # Lcom/qiniu/android/http/Client;
    .param p1, "config"    # Lcom/qiniu/android/storage/Configuration;
    .param p2, "data"    # [B
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Lcom/qiniu/android/storage/UpToken;
    .param p5, "completionHandler"    # Lcom/qiniu/android/storage/UpCompletionHandler;
    .param p6, "options"    # Lcom/qiniu/android/storage/UploadOptions;

    .prologue
    .line 38
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/qiniu/android/storage/FormUploader;->post([BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/Client;Lcom/qiniu/android/storage/Configuration;)V

    .line 39
    return-void
.end method
