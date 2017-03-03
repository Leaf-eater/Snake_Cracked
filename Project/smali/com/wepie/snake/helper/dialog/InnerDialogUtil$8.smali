.class final Lcom/wepie/snake/helper/dialog/InnerDialogUtil$8;
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
.field final synthetic val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$8;->val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$8;->val$dialog:Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->dismiss()V

    .line 178
    return-void
.end method
