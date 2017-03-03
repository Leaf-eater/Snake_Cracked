.class Lcom/wepie/snake/module/home/skin/SkinView$7;
.super Ljava/lang/Object;
.source "SkinView.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/SkinView;->updateUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/SkinView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/SkinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView$7;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 223
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$7;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # invokes: Lcom/wepie/snake/module/home/skin/SkinView;->refreshCoin()V
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/SkinView;->access$700(Lcom/wepie/snake/module/home/skin/SkinView;)V

    .line 218
    return-void
.end method
