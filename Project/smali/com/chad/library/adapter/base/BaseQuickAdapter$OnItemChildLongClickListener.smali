.class public Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;
.super Ljava/lang/Object;
.source "BaseQuickAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/BaseQuickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnItemChildLongClickListener"
.end annotation


# instance fields
.field public mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .prologue
    .line 271
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>.OnItemChildLongClickListener;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>.OnItemChildLongClickListener;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    # getter for: Lcom/chad/library/adapter/base/BaseQuickAdapter;->mChildLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;
    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$100(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    # getter for: Lcom/chad/library/adapter/base/BaseQuickAdapter;->mChildLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;
    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$100(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;->onItemChildLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
