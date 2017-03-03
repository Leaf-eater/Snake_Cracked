.class final Lcom/wepie/snake/helper/dialog/InnerDialogUtil$5;
.super Ljava/lang/Object;
.source "InnerDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/dialog/InnerDialogUtil;->showDoubleTextDoubleBtTip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

.field final synthetic val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$5;->val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    iput-object p2, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$5;->val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$5;->val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$5;->val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$5;->val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    invoke-interface {v0}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;->onClickSure()V

    .line 132
    :cond_0
    return-void
.end method
