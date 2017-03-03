.class Lcom/wepie/snake/module/util/DownloadUtil$2$1;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/util/DownloadUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/util/DownloadUtil$2;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/util/DownloadUtil$2;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/util/DownloadUtil$2;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/wepie/snake/module/util/DownloadUtil$2$1;->this$0:Lcom/wepie/snake/module/util/DownloadUtil$2;

    iput-boolean p2, p0, Lcom/wepie/snake/module/util/DownloadUtil$2$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/wepie/snake/module/util/DownloadUtil$2$1;->val$result:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/wepie/snake/module/util/DownloadUtil$2$1;->this$0:Lcom/wepie/snake/module/util/DownloadUtil$2;

    iget-object v0, v0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;->onSuccess()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/util/DownloadUtil$2$1;->this$0:Lcom/wepie/snake/module/util/DownloadUtil$2;

    iget-object v0, v0, Lcom/wepie/snake/module/util/DownloadUtil$2;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;->onFailed()V

    goto :goto_0
.end method
