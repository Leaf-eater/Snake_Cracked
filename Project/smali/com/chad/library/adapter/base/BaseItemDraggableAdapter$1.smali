.class Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;
.super Ljava/lang/Object;
.source "BaseItemDraggableAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->setToggleDragOnLongPress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    .prologue
    .line 105
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;->this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;->this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    # getter for: Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;
    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->access$000(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;->this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    # getter for: Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z
    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->access$100(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;->this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    # getter for: Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;
    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->access$000(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v1

    sget v0, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 111
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
