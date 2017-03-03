.class Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetWorkBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/HomeActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----->HomeActivity NetWorkBroadcast onReceive, isNetworkConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/wepie/snake/module/util/NetWorkUtil;->isNetworkConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastNetConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    .line 188
    # getter for: Lcom/wepie/snake/activity/HomeActivity;->lastNetConnected:Z
    invoke-static {v5}, Lcom/wepie/snake/activity/HomeActivity;->access$100(Lcom/wepie/snake/activity/HomeActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/wepie/snake/module/util/NetWorkUtil;->isNetworkConnected()Z

    move-result v2

    .line 190
    .local v2, "isNetworkConnected":Z
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    # getter for: Lcom/wepie/snake/activity/HomeActivity;->lastNetConnected:Z
    invoke-static {v3}, Lcom/wepie/snake/activity/HomeActivity;->access$100(Lcom/wepie/snake/activity/HomeActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    invoke-static {}, Lcom/wepie/snake/helper/update/UpdateUtil;->getInstance()Lcom/wepie/snake/helper/update/UpdateUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/helper/update/UpdateUtil;->checkUpdate()V

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    # setter for: Lcom/wepie/snake/activity/HomeActivity;->lastNetConnected:Z
    invoke-static {v3, v2}, Lcom/wepie/snake/activity/HomeActivity;->access$102(Lcom/wepie/snake/activity/HomeActivity;Z)Z

    .line 201
    .end local v2    # "isNetworkConnected":Z
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    const-string v3, "wx_auth_success"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    const-string v3, "access_token"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "code":Ljava/lang/String;
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----->HomeActivity onReceive wx login, code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    # invokes: Lcom/wepie/snake/activity/HomeActivity;->doWXAuthoSuccess(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/wepie/snake/activity/HomeActivity;->access$200(Lcom/wepie/snake/activity/HomeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v1    # "code":Ljava/lang/String;
    :cond_3
    const-string v3, "sid_error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v3}, Lcom/wepie/snake/activity/HomeActivity;->doKickOut()V

    goto :goto_0
.end method
