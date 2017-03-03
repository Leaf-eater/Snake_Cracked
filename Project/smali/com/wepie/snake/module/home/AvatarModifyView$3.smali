.class Lcom/wepie/snake/module/home/AvatarModifyView$3;
.super Ljava/lang/Object;
.source "AvatarModifyView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/AvatarModifyView;->initRecyclerSystem()V
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
    .line 159
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$3;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$3;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$300(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$3;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$300(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$3;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    const v0, 0x7f0d00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$302(Lcom/wepie/snake/module/home/AvatarModifyView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$3;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$300(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$3;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$3;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystemAdapter:Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$100(Lcom/wepie/snake/module/home/AvatarModifyView;)Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/wepie/snake/module/home/AvatarModifyView;->doClickHeadSkin(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$400(Lcom/wepie/snake/module/home/AvatarModifyView;Ljava/lang/String;)V

    .line 166
    return-void
.end method
