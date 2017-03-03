.class final Lcom/wepie/snake/module/util/DownloadUtil$3;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/util/DownloadUtil;->downloadFileIfNotExist(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/wepie/snake/module/util/DownloadUtil;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 129
    .local v0, "res":Z
    iget-object v1, p0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    # getter for: Lcom/wepie/snake/module/util/DownloadUtil;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/wepie/snake/module/util/DownloadUtil;->access$000()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wepie/snake/module/util/DownloadUtil$3$1;

    invoke-direct {v2, p0, v0}, Lcom/wepie/snake/module/util/DownloadUtil$3$1;-><init>(Lcom/wepie/snake/module/util/DownloadUtil$3;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
