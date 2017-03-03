.class Lcom/wepie/snake/module/home/user/LoginInfoView$2;
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
    .line 94
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$2;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$2;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # invokes: Lcom/wepie/snake/module/home/user/LoginInfoView;->doUpdateAge()V
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$200(Lcom/wepie/snake/module/home/user/LoginInfoView;)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
