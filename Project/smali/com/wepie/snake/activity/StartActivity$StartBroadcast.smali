.class Lcom/wepie/snake/activity/StartActivity$StartBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/activity/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/StartActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/StartActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/wepie/snake/activity/StartActivity$StartBroadcast;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string v1, "sid_error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/wepie/snake/activity/StartActivity$StartBroadcast;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-virtual {v1}, Lcom/wepie/snake/activity/StartActivity;->doKickOut()V

    .line 176
    :cond_0
    return-void
.end method
