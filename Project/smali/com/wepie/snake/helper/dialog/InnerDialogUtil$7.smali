.class final Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;
.super Ljava/lang/Object;
.source "InnerDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/dialog/InnerDialogUtil;->showItemSelectDialog(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;ZLcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;

.field final synthetic val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;I)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;->val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    iput-object p2, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;->val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;

    iput p3, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;->val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->dismiss()V

    .line 168
    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;->val$callback:Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;

    iget v1, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;->val$position:I

    invoke-interface {v0, v1}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;->onItemSelect(I)V

    .line 169
    return-void
.end method
