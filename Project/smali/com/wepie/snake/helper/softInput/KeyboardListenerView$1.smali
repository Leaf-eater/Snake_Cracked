.class Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;
.super Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;
.source "KeyboardListenerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/softInput/KeyboardListenerView;
    .param p2, "contextView"    # Landroid/view/View;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    invoke-direct {p0, p2}, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onKeyBoardHide()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    # getter for: Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->detectEnabled:Z
    invoke-static {v0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->access$000(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    const/4 v1, 0x0

    # setter for: Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardShow:Z
    invoke-static {v0, v1}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->access$102(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;Z)Z

    .line 52
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->keyBoardHide()V

    goto :goto_0
.end method

.method public onKeyBoardShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    # getter for: Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->detectEnabled:Z
    invoke-static {v0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->access$000(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    # setter for: Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardShow:Z
    invoke-static {v0, v3}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->access$102(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;Z)Z

    .line 37
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    invoke-virtual {p0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->getKeyBoardHeight()I

    move-result v1

    # setter for: Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardHeight:I
    invoke-static {v0, v1}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->access$202(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;I)I

    .line 39
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    # getter for: Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->firstShowKeyboard:Z
    invoke-static {v0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->access$300(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    # setter for: Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->firstShowKeyboard:Z
    invoke-static {v0, v2}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->access$302(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;Z)Z

    .line 41
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    invoke-virtual {v0, v3}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->keyBoardShow(Z)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;->this$0:Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    invoke-virtual {v0, v2}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->keyBoardShow(Z)V

    goto :goto_0
.end method
