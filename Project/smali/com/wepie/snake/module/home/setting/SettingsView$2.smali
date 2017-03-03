.class Lcom/wepie/snake/module/home/setting/SettingsView$2;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Lcom/wepie/snake/module/login/UserLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/setting/SettingsView;->doLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

.field final synthetic val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/setting/SettingsView;Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$2;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    iput-object p2, p0, Lcom/wepie/snake/module/home/setting/SettingsView$2;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView$2;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 150
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView$2;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 143
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView$2;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$800(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->showHomeView()V

    .line 144
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView$2;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/setting/SettingsView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView$2;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/setting/SettingsView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    invoke-interface {v0}, Lcom/wepie/snake/helper/dialog/CloseListener;->onClose()V

    .line 145
    :cond_0
    return-void
.end method
