.class Lcom/wepie/snake/module/login/QQLogin$1;
.super Ljava/lang/Object;
.source "QQLogin.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/login/QQLogin;->onTencentLoginComplete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/login/QQLogin;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/login/QQLogin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/login/QQLogin;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/wepie/snake/module/login/QQLogin$1;->this$0:Lcom/wepie/snake/module/login/QQLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin$1;->this$0:Lcom/wepie/snake/module/login/QQLogin;

    # getter for: Lcom/wepie/snake/module/login/QQLogin;->mUserLoginCallback:Lcom/wepie/snake/module/login/UserLoginCallback;
    invoke-static {v0}, Lcom/wepie/snake/module/login/QQLogin;->access$000(Lcom/wepie/snake/module/login/QQLogin;)Lcom/wepie/snake/module/login/UserLoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin$1;->this$0:Lcom/wepie/snake/module/login/QQLogin;

    # getter for: Lcom/wepie/snake/module/login/QQLogin;->mUserLoginCallback:Lcom/wepie/snake/module/login/UserLoginCallback;
    invoke-static {v0}, Lcom/wepie/snake/module/login/QQLogin;->access$000(Lcom/wepie/snake/module/login/QQLogin;)Lcom/wepie/snake/module/login/UserLoginCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/login/UserLoginCallback;->onFail(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin$1;->this$0:Lcom/wepie/snake/module/login/QQLogin;

    # getter for: Lcom/wepie/snake/module/login/QQLogin;->mUserLoginCallback:Lcom/wepie/snake/module/login/UserLoginCallback;
    invoke-static {v0}, Lcom/wepie/snake/module/login/QQLogin;->access$000(Lcom/wepie/snake/module/login/QQLogin;)Lcom/wepie/snake/module/login/UserLoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin$1;->this$0:Lcom/wepie/snake/module/login/QQLogin;

    # getter for: Lcom/wepie/snake/module/login/QQLogin;->mUserLoginCallback:Lcom/wepie/snake/module/login/UserLoginCallback;
    invoke-static {v0}, Lcom/wepie/snake/module/login/QQLogin;->access$000(Lcom/wepie/snake/module/login/QQLogin;)Lcom/wepie/snake/module/login/UserLoginCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/login/UserLoginCallback;->onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V

    .line 66
    :cond_0
    return-void
.end method
