.class Lcom/wepie/snake/module/home/NicknameModifyView$2;
.super Ljava/lang/Object;
.source "NicknameModifyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/NicknameModifyView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/NicknameModifyView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/NicknameModifyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/NicknameModifyView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    # getter for: Lcom/wepie/snake/module/home/NicknameModifyView;->nickname:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/wepie/snake/module/home/NicknameModifyView;->access$100(Lcom/wepie/snake/module/home/NicknameModifyView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "nickString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    # getter for: Lcom/wepie/snake/module/home/NicknameModifyView;->description:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/wepie/snake/module/home/NicknameModifyView;->access$000(Lcom/wepie/snake/module/home/NicknameModifyView;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u6635\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/wepie/snake/module/game/nick/NickManager;->getInstance()Lcom/wepie/snake/module/game/nick/NickManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/game/nick/NickManager;->isNickValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v1, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {v1}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;-><init>()V

    .line 76
    .local v1, "progressDialogUtil":Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;
    iget-object v2, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    invoke-virtual {v2}, Lcom/wepie/snake/module/home/NicknameModifyView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 77
    new-instance v2, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/wepie/snake/module/home/NicknameModifyView$2$1;-><init>(Lcom/wepie/snake/module/home/NicknameModifyView$2;Ljava/lang/String;Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;)V

    invoke-static {v0, v2}, Lcom/wepie/snake/module/net/api/UserApi;->updateNick(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    goto :goto_0

    .line 93
    .end local v1    # "progressDialogUtil":Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;
    :cond_1
    iget-object v2, p0, Lcom/wepie/snake/module/home/NicknameModifyView$2;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    # getter for: Lcom/wepie/snake/module/home/NicknameModifyView;->description:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/wepie/snake/module/home/NicknameModifyView;->access$000(Lcom/wepie/snake/module/home/NicknameModifyView;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u6635\u79f0\u4e2d\u6709\u654f\u611f\u8bcd\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
