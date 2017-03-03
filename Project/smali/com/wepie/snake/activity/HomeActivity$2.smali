.class Lcom/wepie/snake/activity/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/HomeActivity;->doQQAutho()V
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
    .line 210
    iput-object p1, p0, Lcom/wepie/snake/activity/HomeActivity$2;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$2;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    # invokes: Lcom/wepie/snake/activity/HomeActivity;->doLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    invoke-static {v0, p1}, Lcom/wepie/snake/activity/HomeActivity;->access$300(Lcom/wepie/snake/activity/HomeActivity;Lcom/wepie/snake/module/login/UserInfo;)V

    .line 214
    return-void
.end method
