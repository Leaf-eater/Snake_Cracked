.class Lcom/wepie/snake/module/home/user/LoginInfoView$5;
.super Ljava/lang/Object;
.source "LoginInfoView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/user/LoginInfoView;->doUpdateGender(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

.field final synthetic val$gender:I


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/user/LoginInfoView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$5;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    iput p2, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$5;->val$gender:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$5;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->refresh()V

    .line 157
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$5;->val$gender:I

    invoke-static {v0}, Lcom/wepie/snake/module/login/LoginHelper;->updateGender(I)V

    .line 151
    return-void
.end method
