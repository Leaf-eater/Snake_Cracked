.class Lcom/wepie/snake/module/home/LoadingView$1;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/LoadingView;->doRefresh(Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/LoadingView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/LoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/LoadingView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/wepie/snake/module/home/LoadingView$1;->this$0:Lcom/wepie/snake/module/home/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView$1;->this$0:Lcom/wepie/snake/module/home/LoadingView;

    # invokes: Lcom/wepie/snake/module/home/LoadingView;->doLoginFailed(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/wepie/snake/module/home/LoadingView;->access$100(Lcom/wepie/snake/module/home/LoadingView;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView$1;->this$0:Lcom/wepie/snake/module/home/LoadingView;

    # invokes: Lcom/wepie/snake/module/home/LoadingView;->doLoginSuccess()V
    invoke-static {v0}, Lcom/wepie/snake/module/home/LoadingView;->access$000(Lcom/wepie/snake/module/home/LoadingView;)V

    .line 72
    return-void
.end method
