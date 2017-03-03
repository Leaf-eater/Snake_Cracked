.class public Lcom/wepie/snake/module/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_THREADS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static downloadExecutor:Ljava/util/concurrent/Executor;

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lcom/wepie/snake/module/util/DownloadUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/util/DownloadUtil;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/util/DownloadUtil;->downloadExecutor:Ljava/util/concurrent/Executor;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wepie/snake/module/util/DownloadUtil;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/wepie/snake/module/util/DownloadUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 29
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 31
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 33
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 35
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v5, "input":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    .local v6, "output":Ljava/io/BufferedOutputStream;
    const/16 v9, 0x2000

    new-array v0, v9, [B

    .line 39
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    if-lez v2, :cond_0

    .line 40
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "count":I
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "input":Ljava/io/BufferedInputStream;
    .end local v6    # "output":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return v8

    .line 42
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "count":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "input":Ljava/io/BufferedInputStream;
    .restart local v6    # "output":Ljava/io/BufferedOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 43
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public static downloadFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    .prologue
    .line 53
    sget-object v0, Lcom/wepie/snake/module/util/DownloadUtil;->downloadExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/wepie/snake/module/util/DownloadUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/wepie/snake/module/util/DownloadUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public static downloadFileAsyncWithRetry(Ljava/lang/String;Ljava/lang/String;ILcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "retryCount"    # I
    .param p3, "callback"    # Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    .prologue
    .line 75
    sget-object v0, Lcom/wepie/snake/module/util/DownloadUtil;->downloadExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/wepie/snake/module/util/DownloadUtil$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/wepie/snake/module/util/DownloadUtil$2;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public static downloadFileIfNotExist(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    .prologue
    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 122
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;->onSuccess()V

    goto :goto_0

    .line 125
    :cond_2
    sget-object v1, Lcom/wepie/snake/module/util/DownloadUtil;->downloadExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/wepie/snake/module/util/DownloadUtil$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/wepie/snake/module/util/DownloadUtil$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
