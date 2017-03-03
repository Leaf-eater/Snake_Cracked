.class Lcom/wepie/snake/activity/HomeActivity$5$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/HomeActivity$5;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wepie/snake/activity/HomeActivity$5;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/HomeActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wepie/snake/activity/HomeActivity$5;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/wepie/snake/activity/HomeActivity$5$1;->this$1:Lcom/wepie/snake/activity/HomeActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$5$1;->this$1:Lcom/wepie/snake/activity/HomeActivity$5;

    iget-object v0, v0, Lcom/wepie/snake/activity/HomeActivity$5;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    iget-object v0, v0, Lcom/wepie/snake/activity/HomeActivity;->progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 275
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$5$1;->this$1:Lcom/wepie/snake/activity/HomeActivity$5;

    iget-object v0, v0, Lcom/wepie/snake/activity/HomeActivity$5;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    iget-object v0, v0, Lcom/wepie/snake/activity/HomeActivity;->progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 268
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$5$1;->this$1:Lcom/wepie/snake/activity/HomeActivity$5;

    iget-object v0, v0, Lcom/wepie/snake/activity/HomeActivity$5;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    # invokes: Lcom/wepie/snake/activity/HomeActivity;->doLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    invoke-static {v0, p1}, Lcom/wepie/snake/activity/HomeActivity;->access$300(Lcom/wepie/snake/activity/HomeActivity;Lcom/wepie/snake/module/login/UserInfo;)V

    .line 269
    return-void
.end method
