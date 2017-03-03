.class Lcom/wepie/snake/activity/StartActivity$5;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/StartActivity;->doKickOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/StartActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/StartActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/wepie/snake/activity/StartActivity$5;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/wepie/snake/activity/StartActivity$5;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/StartActivity;->finish()V

    .line 191
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wepie/snake/activity/StartActivity$5;->this$0:Lcom/wepie/snake/activity/StartActivity;

    # invokes: Lcom/wepie/snake/activity/StartActivity;->doJump()V
    invoke-static {v0}, Lcom/wepie/snake/activity/StartActivity;->access$300(Lcom/wepie/snake/activity/StartActivity;)V

    .line 185
    return-void
.end method
