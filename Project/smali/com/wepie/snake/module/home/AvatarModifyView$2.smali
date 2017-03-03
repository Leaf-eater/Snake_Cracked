.class Lcom/wepie/snake/module/home/AvatarModifyView$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "AvatarModifyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/AvatarModifyView;->initRecyclerSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/wepie/snake/module/home/AvatarModifyView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$2;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$2;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$2;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 154
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 155
    iget v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$2;->space:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 157
    :cond_0
    return-void
.end method
