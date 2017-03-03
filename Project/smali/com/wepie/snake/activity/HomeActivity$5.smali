.class Lcom/wepie/snake/activity/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/HomeActivity;->doWXAuthoSuccess(Ljava/lang/String;)V
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
    .line 261
    iput-object p1, p0, Lcom/wepie/snake/activity/HomeActivity$5;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$5;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    iget-object v0, v0, Lcom/wepie/snake/activity/HomeActivity;->progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 283
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "access_token"    # Ljava/lang/String;
    .param p2, "unionid"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v0, Lcom/wepie/snake/activity/HomeActivity$5$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/activity/HomeActivity$5$1;-><init>(Lcom/wepie/snake/activity/HomeActivity$5;)V

    invoke-static {p1, p2, v0}, Lcom/wepie/snake/module/net/api/LoginApi;->wxLoginWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/login/UserLoginCallback;)V

    .line 277
    return-void
.end method
