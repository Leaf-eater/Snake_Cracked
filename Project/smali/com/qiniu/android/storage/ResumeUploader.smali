.class final Lcom/qiniu/android/storage/ResumeUploader;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final chunkBuffer:[B

.field private final client:Lcom/qiniu/android/http/Client;

.field private final completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private final contexts:[Ljava/lang/String;

.field private crc32:J

.field private f:Ljava/io/File;

.field private file:Ljava/io/RandomAccessFile;

.field private final headers:Lcom/qiniu/android/utils/StringMap;

.field private final key:Ljava/lang/String;

.field private final modifyTime:J

.field private final options:Lcom/qiniu/android/storage/UploadOptions;

.field private final recorderKey:Ljava/lang/String;

.field private final size:J

.field private token:Lcom/qiniu/android/storage/UpToken;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;)V
    .locals 6
    .param p1, "client"    # Lcom/qiniu/android/http/Client;
    .param p2, "config"    # Lcom/qiniu/android/storage/Configuration;
    .param p3, "f"    # Ljava/io/File;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "token"    # Lcom/qiniu/android/storage/UpToken;
    .param p6, "completionHandler"    # Lcom/qiniu/android/storage/UpCompletionHandler;
    .param p7, "options"    # Lcom/qiniu/android/storage/UploadOptions;
    .param p8, "recorderKey"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader;->client:Lcom/qiniu/android/http/Client;

    .line 60
    iput-object p2, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    .line 61
    iput-object p3, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    .line 62
    iput-object p8, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    .line 63
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    .line 64
    iput-object p4, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    .line 65
    new-instance v2, Lcom/qiniu/android/utils/StringMap;

    invoke-direct {v2}, Lcom/qiniu/android/utils/StringMap;-><init>()V

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p5, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/utils/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/qiniu/android/utils/StringMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:Lcom/qiniu/android/utils/StringMap;

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    .line 67
    new-instance v2, Lcom/qiniu/android/storage/ResumeUploader$1;

    invoke-direct {v2, p0, p6}, Lcom/qiniu/android/storage/ResumeUploader$1;-><init>(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    .line 80
    if-eqz p7, :cond_0

    .end local p7    # "options":Lcom/qiniu/android/storage/UploadOptions;
    :goto_0
    iput-object p7, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    .line 81
    iget v2, p2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    .line 82
    iget-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    const-wide/32 v4, 0x400000

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x400000

    div-long v0, v2, v4

    .line 83
    .local v0, "count":J
    long-to-int v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    .line 84
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    .line 85
    iput-object p5, p0, Lcom/qiniu/android/storage/ResumeUploader;->token:Lcom/qiniu/android/storage/UpToken;

    .line 86
    return-void

    .line 80
    .end local v0    # "count":J
    .restart local p7    # "options":Lcom/qiniu/android/storage/UploadOptions;
    :cond_0
    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object p7

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/ResumeUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->removeRecord()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->isNotChunkToQiniu(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/qiniu/android/storage/ResumeUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/qiniu/android/storage/ResumeUploader;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qiniu/android/storage/ResumeUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/storage/ResumeUploader;->record(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UploadOptions;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpToken;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->token:Lcom/qiniu/android/storage/UpToken;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qiniu/android/storage/ResumeUploader;JILjava/net/URI;)V
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/net/URI;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/storage/ResumeUploader;->nextTask(JILjava/net/URI;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qiniu/android/storage/ResumeUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->isChunkOK(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method private calcBlockSize(J)J
    .locals 7
    .param p1, "offset"    # J

    .prologue
    const-wide/32 v2, 0x400000

    .line 204
    iget-wide v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    sub-long v0, v4, p1

    .line 205
    .local v0, "left":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .end local v0    # "left":J
    :goto_0
    return-wide v0

    .restart local v0    # "left":J
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private calcPutSize(J)J
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 199
    iget-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    sub-long v0, v2, p1

    .line 200
    .local v0, "left":J
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v2, v2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .end local v0    # "left":J
    :goto_0
    return-wide v0

    .restart local v0    # "left":J
    :cond_0
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v2, v2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    int-to-long v0, v2

    goto :goto_0
.end method

.method private isCancelled()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v0, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    invoke-interface {v0}, Lcom/qiniu/android/storage/UpCancellationSignal;->isCancelled()Z

    move-result v0

    return v0
.end method

.method private static isChunkOK(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 89
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->hasReqId()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/qiniu/android/storage/ResumeUploader;->isChunkResOK(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChunkResOK(Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    :try_start_0
    const-string v1, "ctx"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    const-string v1, "crc32"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNotChunkToQiniu(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 104
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->hasReqId()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/qiniu/android/storage/ResumeUploader;->isChunkResOK(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBlock(Ljava/net/URI;JIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 10
    .param p1, "address"    # Ljava/net/URI;
    .param p2, "offset"    # J
    .param p4, "blockSize"    # I
    .param p5, "chunkSize"    # I
    .param p6, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p7, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p8, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 131
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/mkblk/%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "path":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 134
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p5}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p5}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    .line 140
    invoke-direct {p0, p1, v9}, Lcom/qiniu/android/storage/ResumeUploader;->newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 141
    .local v1, "u":Ljava/net/URI;
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 142
    .end local v1    # "u":Ljava/net/URI;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v8

    .line 136
    .local v8, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v8}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private makeFile(Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 21
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p3, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 161
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "/mimeType/%s/fname/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v8, v8, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    .line 162
    invoke-static {v8}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 161
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 164
    .local v17, "mime":Ljava/lang/String;
    const-string v16, ""

    .line 165
    .local v16, "keyStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "/key/%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v7}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 169
    :cond_0
    const-string v18, ""

    .line 170
    .local v18, "paramStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v2, v2, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v2, v2, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 172
    .local v20, "str":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 173
    .local v14, "j":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v2, v2, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 174
    .local v13, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "j":I
    .local v15, "j":I
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "%s/%s"

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v20, v14

    move v14, v15

    .line 175
    .end local v15    # "j":I
    .restart local v14    # "j":I
    goto :goto_0

    .line 176
    .end local v13    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 178
    .end local v14    # "j":I
    .end local v20    # "str":[Ljava/lang/String;
    :cond_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "/mkfile/%d%s%s%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v17, v6, v7

    const/4 v7, 0x2

    aput-object v16, v6, v7

    const/4 v7, 0x3

    aput-object v18, v6, v7

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 179
    .local v19, "path":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 181
    .local v3, "address":Ljava/net/URI;
    :try_start_0
    new-instance v10, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-direct {v10, v2, v5, v0, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "address":Ljava/net/URI;
    .local v10, "address":Ljava/net/URI;
    move-object v3, v10

    .line 187
    .end local v10    # "address":Ljava/net/URI;
    .restart local v3    # "address":Ljava/net/URI;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    const-string v5, ","

    invoke-static {v2, v5}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, "bodyStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 190
    .local v4, "data":[B
    const/4 v5, 0x0

    array-length v6, v4

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 191
    return-void

    .line 182
    .end local v4    # "data":[B
    .end local v11    # "bodyStr":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 183
    .local v12, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v12}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 358
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v8

    .line 360
    .local v8, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, p1

    .line 362
    goto :goto_0
.end method

.method private nextTask(JILjava/net/URI;)V
    .locals 23
    .param p1, "offset"    # J
    .param p3, "retried"    # I
    .param p4, "address"    # Ljava/net/URI;

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/qiniu/android/storage/ResumeUploader;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v4

    .line 215
    .local v4, "i":Lcom/qiniu/android/http/ResponseInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v4, v8}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 301
    .end local v4    # "i":Lcom/qiniu/android/http/ResponseInfo;
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    cmp-long v6, p1, v6

    if-nez v6, :cond_1

    .line 221
    new-instance v5, Lcom/qiniu/android/storage/ResumeUploader$2;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p1

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/qiniu/android/storage/ResumeUploader$2;-><init>(Lcom/qiniu/android/storage/ResumeUploader;IJ)V

    .line 238
    .local v5, "complete":Lcom/qiniu/android/http/CompletionHandler;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v6, v6, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5, v6}, Lcom/qiniu/android/storage/ResumeUploader;->makeFile(Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_0

    .line 242
    .end local v5    # "complete":Lcom/qiniu/android/http/CompletionHandler;
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/qiniu/android/storage/ResumeUploader;->calcPutSize(J)J

    move-result-wide v6

    long-to-int v11, v6

    .line 243
    .local v11, "chunkSize":I
    new-instance v12, Lcom/qiniu/android/storage/ResumeUploader$3;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v12, v0, v1, v2}, Lcom/qiniu/android/storage/ResumeUploader$3;-><init>(Lcom/qiniu/android/storage/ResumeUploader;J)V

    .line 255
    .local v12, "progress":Lcom/qiniu/android/http/ProgressHandler;
    new-instance v5, Lcom/qiniu/android/storage/ResumeUploader$4;

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/qiniu/android/storage/ResumeUploader$4;-><init>(Lcom/qiniu/android/storage/ResumeUploader;IJLjava/net/URI;I)V

    .line 294
    .restart local v5    # "complete":Lcom/qiniu/android/http/CompletionHandler;
    const-wide/32 v6, 0x400000

    rem-long v6, p1, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 295
    invoke-direct/range {p0 .. p2}, Lcom/qiniu/android/storage/ResumeUploader;->calcBlockSize(J)J

    move-result-wide v6

    long-to-int v10, v6

    .line 296
    .local v10, "blockSize":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v14, v6, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-wide/from16 v8, p1

    move-object v13, v5

    invoke-direct/range {v6 .. v14}, Lcom/qiniu/android/storage/ResumeUploader;->makeBlock(Ljava/net/URI;JIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_0

    .line 299
    .end local v10    # "blockSize":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    const-wide/32 v8, 0x400000

    div-long v8, p1, v8

    long-to-int v7, v8

    aget-object v19, v6, v7

    .line 300
    .local v19, "context":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v6, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v22, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p4

    move-wide/from16 v16, p1

    move/from16 v18, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v5

    invoke-direct/range {v14 .. v22}, Lcom/qiniu/android/storage/ResumeUploader;->putChunk(Ljava/net/URI;JILjava/lang/String;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto/16 :goto_0
.end method

.method private post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p6, "completion"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->client:Lcom/qiniu/android/http/Client;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:Lcom/qiniu/android/utils/StringMap;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/qiniu/android/http/Client;->asyncPost(Ljava/lang/String;[BIILcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 196
    return-void
.end method

.method private putChunk(Ljava/net/URI;JILjava/lang/String;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 14
    .param p1, "address"    # Ljava/net/URI;
    .param p2, "offset"    # J
    .param p4, "chunkSize"    # I
    .param p5, "context"    # Ljava/lang/String;
    .param p6, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p7, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p8, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 146
    const-wide/32 v4, 0x400000

    rem-long v4, p2, v4

    long-to-int v10, v4

    .line 147
    .local v10, "chunkOffset":I
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "/bput/%s/%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p5, v5, v6

    const/4 v6, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "path":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 150
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v2, v4, v5, v0}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v4, 0x0

    move/from16 v0, p4

    invoke-static {v2, v4, v0}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    .line 156
    invoke-direct {p0, p1, v12}, Lcom/qiniu/android/storage/ResumeUploader;->newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 157
    .local v3, "u":Ljava/net/URI;
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v5, 0x0

    move-object v2, p0

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 158
    .end local v3    # "u":Ljava/net/URI;
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v11

    .line 152
    .local v11, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v11}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private record(J)V
    .locals 9
    .param p1, "offset"    # J

    .prologue
    .line 347
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "{\"size\":%d,\"offset\":%d, \"modify_time\":%d, \"contexts\":[%s]}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    .line 351
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-static {v5}, Lcom/qiniu/android/utils/StringUtils;->jsonJoin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 350
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/qiniu/android/storage/Recorder;->set(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private recoveryFromRecord()J
    .locals 18

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v14, v14, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-nez v14, :cond_1

    .line 305
    const-wide/16 v12, 0x0

    .line 330
    :cond_0
    :goto_0
    return-wide v12

    .line 307
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v14, v14, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-interface {v14, v15}, Lcom/qiniu/android/storage/Recorder;->get(Ljava/lang/String;)[B

    move-result-object v3

    .line 308
    .local v3, "data":[B
    if-nez v3, :cond_2

    .line 309
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 311
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    .line 314
    .local v8, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .local v9, "obj":Lorg/json/JSONObject;
    const-string v14, "offset"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 320
    .local v12, "offset":J
    const-string v14, "modify_time"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 321
    .local v10, "modify":J
    const-string v14, "size"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 322
    .local v6, "fSize":J
    const-string v14, "contexts"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 323
    .local v2, "array":Lorg/json/JSONArray;
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    cmp-long v14, v10, v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:J

    cmp-long v14, v6, v14

    if-nez v14, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-nez v14, :cond_4

    .line 324
    :cond_3
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 315
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v6    # "fSize":J
    .end local v9    # "obj":Lorg/json/JSONObject;
    .end local v10    # "modify":J
    .end local v12    # "offset":J
    :catch_0
    move-exception v4

    .line 316
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 317
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 326
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v6    # "fSize":J
    .restart local v9    # "obj":Lorg/json/JSONObject;
    .restart local v10    # "modify":J
    .restart local v12    # "offset":J
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private removeRecord()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->recoveryFromRecord()J

    move-result-wide v2

    .line 110
    .local v2, "offset":J
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    const-string v5, "r"

    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v4, v4, Lcom/qiniu/android/storage/Configuration;->up:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v4, v4, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/qiniu/android/storage/ResumeUploader;->nextTask(JILjava/net/URI;)V

    .line 117
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 113
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
