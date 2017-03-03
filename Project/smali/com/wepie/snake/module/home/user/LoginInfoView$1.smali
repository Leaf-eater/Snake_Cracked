.class Lcom/wepie/snake/module/home/user/LoginInfoView$1;
.super Ljava/lang/Object;
.source "LoginInfoView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/user/LoginInfoView;->addEditTextWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/user/LoginInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$1;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 79
    const/4 v2, 0x6

    if-ne v2, p2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$1;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$000(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "nick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "\u6635\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 90
    .end local v0    # "nick":Ljava/lang/String;
    :goto_0
    return v1

    .line 84
    .restart local v0    # "nick":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/wepie/snake/module/game/nick/NickManager;->getInstance()Lcom/wepie/snake/module/game/nick/NickManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/game/nick/NickManager;->isNickValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    const-string v2, "\u6635\u79f0\u5305\u542b\u654f\u611f\u8bcd"

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$1;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # invokes: Lcom/wepie/snake/module/home/user/LoginInfoView;->doUpdateNick()V
    invoke-static {v1}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$100(Lcom/wepie/snake/module/home/user/LoginInfoView;)V

    .line 90
    .end local v0    # "nick":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
