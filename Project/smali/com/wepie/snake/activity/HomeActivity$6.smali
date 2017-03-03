.class Lcom/wepie/snake/activity/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/HomeActivity;->doKickOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/HomeActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/wepie/snake/activity/HomeActivity$6;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$6;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->finish()V

    .line 304
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$6;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->refreshUserInfo()V

    .line 297
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$6;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->showHomeView()V

    .line 298
    return-void
.end method
