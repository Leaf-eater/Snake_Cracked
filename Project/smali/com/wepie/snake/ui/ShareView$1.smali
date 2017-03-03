.class Lcom/wepie/snake/ui/ShareView$1;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/ShareView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/ShareView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/ShareView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/ShareView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wepie/snake/ui/ShareView$1;->this$0:Lcom/wepie/snake/ui/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView$1;->this$0:Lcom/wepie/snake/ui/ShareView;

    # getter for: Lcom/wepie/snake/ui/ShareView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;
    invoke-static {v0}, Lcom/wepie/snake/ui/ShareView;->access$000(Lcom/wepie/snake/ui/ShareView;)Lcom/wepie/snake/helper/dialog/CloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView$1;->this$0:Lcom/wepie/snake/ui/ShareView;

    # getter for: Lcom/wepie/snake/ui/ShareView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;
    invoke-static {v0}, Lcom/wepie/snake/ui/ShareView;->access$000(Lcom/wepie/snake/ui/ShareView;)Lcom/wepie/snake/helper/dialog/CloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/wepie/snake/helper/dialog/CloseListener;->onClose()V

    .line 71
    :cond_0
    return-void
.end method
