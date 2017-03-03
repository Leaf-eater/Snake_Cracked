.class Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/helper/update/UpdateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/update/UpdateUtil;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/update/UpdateUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/update/UpdateUtil;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    const-string v2, "extra_download_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 175
    .local v0, "completeDownloadId":J
    const-string v2, "999"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------>completeDownloadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    # getter for: Lcom/wepie/snake/helper/update/UpdateUtil;->downloadId:J
    invoke-static {v4}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$100(Lcom/wepie/snake/helper/update/UpdateUtil;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAutoDownload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    # getter for: Lcom/wepie/snake/helper/update/UpdateUtil;->isAutoDownload:Z
    invoke-static {v4}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$200(Lcom/wepie/snake/helper/update/UpdateUtil;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    # getter for: Lcom/wepie/snake/helper/update/UpdateUtil;->downloadId:J
    invoke-static {v2}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$100(Lcom/wepie/snake/helper/update/UpdateUtil;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    # getter for: Lcom/wepie/snake/helper/update/UpdateUtil;->isAutoDownload:Z
    invoke-static {v2}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$200(Lcom/wepie/snake/helper/update/UpdateUtil;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    iget-object v3, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    # getter for: Lcom/wepie/snake/helper/update/UpdateUtil;->mUpdateInfo:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;
    invoke-static {v3}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$000(Lcom/wepie/snake/helper/update/UpdateUtil;)Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->qiniu_file_hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wepie/snake/helper/update/UpdateUtil;->isLocalFileValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    # getter for: Lcom/wepie/snake/helper/update/UpdateUtil;->mUpdateInfo:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;
    invoke-static {v2}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$000(Lcom/wepie/snake/helper/update/UpdateUtil;)Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->go(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    # getter for: Lcom/wepie/snake/helper/update/UpdateUtil;->localFilePath:Ljava/lang/String;
    invoke-static {}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$300()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/wepie/snake/helper/update/UpdateUtil;->installApk(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$400(Lcom/wepie/snake/helper/update/UpdateUtil;Ljava/lang/String;)V

    goto :goto_0
.end method
