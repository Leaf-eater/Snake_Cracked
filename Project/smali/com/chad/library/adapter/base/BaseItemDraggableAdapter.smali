.class public abstract Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseItemDraggableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ERROR_NOT_SAME_ITEMTOUCHHELPER:Ljava/lang/String; = "Item drag and item swipe should pass the same ItemTouchHelper"

.field private static final NO_TOGGLE_VIEW:I


# instance fields
.field private itemDragEnabled:Z

.field private itemSwipeEnabled:Z

.field private mDragOnLongPress:Z

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

.field private mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

.field private mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mToggleViewId:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 25
    iput v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    .line 27
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 28
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Landroid/view/View;Ljava/util/List;)V

    .line 25
    iput v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    .line 27
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 28
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    .line 25
    iput v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    .line 27
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 28
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1
    .param p0, "x0"    # Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    return v0
.end method


# virtual methods
.method public disableDragItem()V
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 163
    return-void
.end method

.method public disableSwipeItem()V
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    .line 179
    return-void
.end method

.method public enableDragItem(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 2
    .param p1, "itemTouchHelper"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->enableDragItem(Landroid/support/v7/widget/helper/ItemTouchHelper;IZ)V

    .line 141
    return-void
.end method

.method public enableDragItem(Landroid/support/v7/widget/helper/ItemTouchHelper;IZ)V
    .locals 1
    .param p1, "itemTouchHelper"    # Landroid/support/v7/widget/helper/ItemTouchHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "toggleViewId"    # I
    .param p3, "dragOnLongPress"    # Z

    .prologue
    .line 151
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 152
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 153
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->setToggleViewId(I)V

    .line 154
    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->setToggleDragOnLongPress(Z)V

    .line 155
    return-void
.end method

.method public enableSwipeItem()V
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    .line 175
    return-void
.end method

.method public getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 193
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public isItemDraggable()Z
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    return v0
.end method

.method public isItemSwipeEnable()Z
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "positions"    # I

    .prologue
    .line 62
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 63
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 65
    .local v1, "viewType":I
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x222

    if-eq v1, v2, :cond_0

    const/16 v2, 0x111

    if-eq v1, v2, :cond_0

    const/16 v2, 0x555

    if-eq v1, v2, :cond_0

    const/16 v2, 0x333

    if-eq v1, v2, :cond_0

    .line 67
    iget v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 68
    check-cast v2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "toggleView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 70
    sget v2, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 71
    iget-boolean v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 82
    .end local v0    # "toggleView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v0    # "toggleView":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 78
    .end local v0    # "toggleView":Landroid/view/View;
    :cond_2
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {v2, v3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public onItemDragEnd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 223
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragEnd(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 226
    :cond_0
    return-void
.end method

.method public onItemDragMoving(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "source"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 203
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 204
    .local v0, "from":I
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 206
    .local v2, "to":I
    if-ge v0, v2, :cond_0

    .line 207
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 208
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mData:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    if-le v1, v2, :cond_1

    .line 212
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mData:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 211
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->notifyItemMoved(II)V

    .line 217
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v3, :cond_2

    .line 218
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    invoke-interface {v3, p1, v0, p2, v2}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragMoving(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 220
    :cond_2
    return-void
.end method

.method public onItemDragStart(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 197
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragStart(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 200
    :cond_0
    return-void
.end method

.method public onItemSwipeClear(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 239
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->clearView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 242
    :cond_0
    return-void
.end method

.method public onItemSwipeStart(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 233
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeStart(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 236
    :cond_0
    return-void
.end method

.method public onItemSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 245
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 251
    .local v0, "pos":I
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 252
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->notifyItemRemoved(I)V

    .line 253
    return-void
.end method

.method public onItemSwiping(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "dX"    # F
    .param p4, "dY"    # F
    .param p5, "isCurrentlyActive"    # Z

    .prologue
    .line 256
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeMoving(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFZ)V

    .line 259
    :cond_0
    return-void
.end method

.method public setOnItemDragListener(Lcom/chad/library/adapter/base/listener/OnItemDragListener;)V
    .locals 0
    .param p1, "onItemDragListener"    # Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    .prologue
    .line 189
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    .line 190
    return-void
.end method

.method public setOnItemSwipeListener(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    .prologue
    .line 229
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    .line 230
    return-void
.end method

.method public setToggleDragOnLongPress(Z)V
    .locals 2
    .param p1, "longPress"    # Z

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    const/4 v1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    .line 103
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    if-eqz v0, :cond_0

    .line 104
    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 105
    new-instance v0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;-><init>(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 131
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$2;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$2;-><init>(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 129
    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_0
.end method

.method public setToggleViewId(I)V
    .locals 0
    .param p1, "toggleViewId"    # I

    .prologue
    .line 92
    .local p0, "this":Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;, "Lcom/chad/library/adapter/base/BaseItemDraggableAdapter<TT;>;"
    iput p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    .line 93
    return-void
.end method
