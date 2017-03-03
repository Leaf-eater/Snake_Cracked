.class Lcom/wepie/snake/module/home/AvatarModifyView$5$1;
.super Ljava/lang/Object;
.source "AvatarModifyView.java"

# interfaces
.implements Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/AvatarModifyView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wepie/snake/module/home/AvatarModifyView$5;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/AvatarModifyView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wepie/snake/module/home/AvatarModifyView$5;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5$1;->this$1:Lcom/wepie/snake/module/home/AvatarModifyView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelect(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 199
    if-nez p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5$1;->this$1:Lcom/wepie/snake/module/home/AvatarModifyView$5;

    iget-object v0, v0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$200(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/wepie/snake/helper/clip/ImageChooser;->enterSystemCameraActivity(Landroid/app/Activity;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$5$1;->this$1:Lcom/wepie/snake/module/home/AvatarModifyView$5;

    iget-object v0, v0, Lcom/wepie/snake/module/home/AvatarModifyView$5;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$200(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/wepie/snake/helper/clip/ImageChooser;->enterPhotoAlbumActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method
