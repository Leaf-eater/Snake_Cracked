.class Lcom/wepie/snake/module/home/share/ShareGainCoinView$1;
.super Ljava/lang/Object;
.source "ShareGainCoinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/share/ShareGainCoinView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/share/ShareGainCoinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$1;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$1;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$1;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    invoke-interface {v0}, Lcom/wepie/snake/helper/dialog/CloseListener;->onClose()V

    .line 56
    :cond_0
    return-void
.end method
