.class Lcom/wepie/snake/module/home/skin/SkinView$5;
.super Ljava/lang/Object;
.source "SkinView.java"

# interfaces
.implements Lcom/wepie/snake/helper/dialog/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/SkinView;->showCoinNotEnoughDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/SkinView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/SkinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView$5;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onClickSure()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$5;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # invokes: Lcom/wepie/snake/module/home/skin/SkinView;->showShareView()V
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/SkinView;->access$100(Lcom/wepie/snake/module/home/skin/SkinView;)V

    .line 185
    return-void
.end method
