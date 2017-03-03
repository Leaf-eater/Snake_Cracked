.class Lcom/wepie/snake/module/home/NicknameModifyView$2$1;
.super Ljava/lang/Object;
.source "NicknameModifyView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/NicknameModifyView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wepie/snake/module/home/NicknameModifyView$2;

.field final synthetic val$nickString:Ljava/lang/String;

.field final synthetic val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/NicknameModifyView$2;Ljava/lang/String;Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wepie/snake/module/home/NicknameModifyView$2;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;->this$1:Lcom/wepie/snake/module/home/NicknameModifyView$2;

    iput-object p2, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;->val$nickString:Ljava/lang/String;

    iput-object p3, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;->this$1:Lcom/wepie/snake/module/home/NicknameModifyView$2;

    iget-object v0, v0, Lcom/wepie/snake/module/home/NicknameModifyView$2;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    # getter for: Lcom/wepie/snake/module/home/NicknameModifyView;->description:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/NicknameModifyView;->access$000(Lcom/wepie/snake/module/home/NicknameModifyView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 89
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;->val$nickString:Ljava/lang/String;

    invoke-static {v0}, Lcom/wepie/snake/module/login/LoginHelper;->updateNick(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 82
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;->this$1:Lcom/wepie/snake/module/home/NicknameModifyView$2;

    iget-object v0, v0, Lcom/wepie/snake/module/home/NicknameModifyView$2;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/NicknameModifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->showUserInfoView()V

    .line 83
    return-void
.end method
