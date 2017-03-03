.class Lcom/wepie/snake/activity/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/wepie/snake/helper/dialog/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/HomeActivity;->doLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
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
    .line 225
    iput-object p1, p0, Lcom/wepie/snake/activity/HomeActivity$3;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$3;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    const/4 v1, 0x0

    # invokes: Lcom/wepie/snake/activity/HomeActivity;->bindUser(Z)V
    invoke-static {v0, v1}, Lcom/wepie/snake/activity/HomeActivity;->access$400(Lcom/wepie/snake/activity/HomeActivity;Z)V

    .line 234
    return-void
.end method

.method public onClickSure()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$3;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    const/4 v1, 0x1

    # invokes: Lcom/wepie/snake/activity/HomeActivity;->bindUser(Z)V
    invoke-static {v0, v1}, Lcom/wepie/snake/activity/HomeActivity;->access$400(Lcom/wepie/snake/activity/HomeActivity;Z)V

    .line 229
    return-void
.end method
