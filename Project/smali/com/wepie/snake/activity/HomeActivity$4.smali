.class Lcom/wepie/snake/activity/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/HomeActivity;->bindUser(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/HomeActivity;

.field final synthetic val$isInherit:Z


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/HomeActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/HomeActivity;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/wepie/snake/activity/HomeActivity$4;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    iput-boolean p2, p0, Lcom/wepie/snake/activity/HomeActivity$4;->val$isInherit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/wepie/snake/activity/HomeActivity$4;->val$isInherit:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$4;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->showNickModifyView()V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$4;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->refreshUserInfo()V

    goto :goto_0
.end method
