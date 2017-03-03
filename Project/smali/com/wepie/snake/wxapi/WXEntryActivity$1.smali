.class Lcom/wepie/snake/wxapi/WXEntryActivity$1;
.super Ljava/lang/Object;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/wepie/snake/module/plugin/callback/PluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/wxapi/WXEntryActivity;->handleWXResp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/wxapi/WXEntryActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/wxapi/WXEntryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/wxapi/WXEntryActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wepie/snake/wxapi/WXEntryActivity$1;->this$0:Lcom/wepie/snake/wxapi/WXEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 39
    const-string v2, "\u5206\u4eab\u6210\u529f"

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/wepie/snake/wxapi/WXEntryActivity$1;->this$0:Lcom/wepie/snake/wxapi/WXEntryActivity;

    invoke-virtual {v2}, Lcom/wepie/snake/wxapi/WXEntryActivity;->finish()V

    .line 55
    return-void

    .line 40
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 41
    const-string v2, "\u5206\u4eab\u53d6\u6d88"

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 43
    const-string v2, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    .line 46
    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    .line 48
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 49
    move-object v0, p2

    .line 50
    .local v0, "access_token":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "wx_auth_success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v2, p0, Lcom/wepie/snake/wxapi/WXEntryActivity$1;->this$0:Lcom/wepie/snake/wxapi/WXEntryActivity;

    invoke-virtual {v2, v1}, Lcom/wepie/snake/wxapi/WXEntryActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
