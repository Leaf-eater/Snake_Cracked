.class Lcom/wepie/snake/module/home/share/ShareGainCoinView$2;
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
    .line 59
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$2;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    const-string v0, "\u83b7\u53d6\u5206\u4eab\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 63
    return-void
.end method
