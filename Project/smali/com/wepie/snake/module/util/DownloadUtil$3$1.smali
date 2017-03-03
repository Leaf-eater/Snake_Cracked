.class Lcom/wepie/snake/module/util/DownloadUtil$3$1;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/util/DownloadUtil$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/util/DownloadUtil$3;

.field final synthetic val$res:Z


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/util/DownloadUtil$3;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/util/DownloadUtil$3;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wepie/snake/module/util/DownloadUtil$3$1;->this$0:Lcom/wepie/snake/module/util/DownloadUtil$3;

    iput-boolean p2, p0, Lcom/wepie/snake/module/util/DownloadUtil$3$1;->val$res:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/wepie/snake/module/util/DownloadUtil$3$1;->val$res:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/wepie/snake/module/util/DownloadUtil$3$1;->this$0:Lcom/wepie/snake/module/util/DownloadUtil$3;

    iget-object v0, v0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/util/DownloadUtil$3$1;->this$0:Lcom/wepie/snake/module/util/DownloadUtil$3;

    iget-object v0, v0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;->onSuccess()V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/module/util/DownloadUtil$3$1;->this$0:Lcom/wepie/snake/module/util/DownloadUtil$3;

    iget-object v0, v0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/util/DownloadUtil$3$1;->this$0:Lcom/wepie/snake/module/util/DownloadUtil$3;

    iget-object v0, v0, Lcom/wepie/snake/module/util/DownloadUtil$3;->val$callback:Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;->onFailed()V

    goto :goto_0
.end method
