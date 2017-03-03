.class public Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;
.super Ljava/lang/Object;
.source "BaseQuickAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/BaseQuickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnItemChildClickListener"
.end annotation


# instance fields
.field public mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .prologue
    .line 243
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>.OnItemChildClickListener;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>.OnItemChildClickListener;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    # getter for: Lcom/chad/library/adapter/base/BaseQuickAdapter;->mChildClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;
    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$000(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    # getter for: Lcom/chad/library/adapter/base/BaseQuickAdapter;->mChildClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;
    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$000(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;->onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 250
    :cond_0
    return-void
.end method
