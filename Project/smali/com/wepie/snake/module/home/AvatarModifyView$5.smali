.class Lcom/wepie/snake/module/home/AvatarModifyView$5;
.super Ljava/lang/Object;
.source "AvatarModifyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/home/AvatarModifyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/AvatarModifyView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->closeBt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$500(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$600(Lcom/wepie/snake/module/home/AvatarModifyView;)Lcom/wepie/snake/helper/dialog/CloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$600(Lcom/wepie/snake/module/home/AvatarModifyView;)Lcom/wepie/snake/helper/dialog/CloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/wepie/snake/helper/dialog/CloseListener;->onClose()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->addImagebt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$700(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "\u7167\u76f8\u673a"

    aput-object v3, v1, v2

    const-string v3, "\u76f8\u518c"

    aput-object v3, v1, v4

    const/4 v3, 0x0

    new-instance v5, Lcom/wepie/snake/module/home/AvatarModifyView$5$1;

    invoke-direct {v5, p0}, Lcom/wepie/snake/module/home/AvatarModifyView$5$1;-><init>(Lcom/wepie/snake/module/home/AvatarModifyView$5;)V

    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil;->showItemSelectDialog(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;ZLcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->userImageView:Lde/hdodenhof/circleimageview/CircleImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$800(Lcom/wepie/snake/module/home/AvatarModifyView;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$300(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$300(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->userImageMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$900(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->userImageMask:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$900(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v1

    # setter for: Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$302(Lcom/wepie/snake/module/home/AvatarModifyView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 212
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-static {}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/UserPrefUtil;

    move-result-object v1

    const-string v3, "local_avatar_url"

    invoke-virtual {v1, v3}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/wepie/snake/module/home/AvatarModifyView;->updateHeadImageUrl(Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$1000(Lcom/wepie/snake/module/home/AvatarModifyView;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
