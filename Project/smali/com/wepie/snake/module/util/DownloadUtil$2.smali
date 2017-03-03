.class final Lcom/wepie/snake/module/util/DownloadUtil$2;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/util/DownloadUtil;->downloadFileAsyncWithRetry(Ljava/lang/String;Ljava/lang/String;ILcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$retryCount:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$path:Ljava/lang/String;

    iput p3, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$retryCount:I

    iput-object p4, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 81
    .local v0, "count":I
    :cond_0
    const-string v4, "999"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------>start load url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$path:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/wepie/snake/module/util/DownloadUtil;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 83
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 86
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget v4, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$retryCount:I

    if-gt v0, v4, :cond_1

    invoke-static {}, Lcom/wepie/snake/module/util/NetWorkUtil;->isNetworkConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    if-nez v4, :cond_2

    .line 108
    :goto_1
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v2

    .line 98
    .local v3, "result":Z
    # getter for: Lcom/wepie/snake/module/util/DownloadUtil;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/wepie/snake/module/util/DownloadUtil;->access$000()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/wepie/snake/module/util/DownloadUtil$2$1;

    invoke-direct {v5, p0, v3}, Lcom/wepie/snake/module/util/DownloadUtil$2$1;-><init>(Lcom/wepie/snake/module/util/DownloadUtil$2;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
